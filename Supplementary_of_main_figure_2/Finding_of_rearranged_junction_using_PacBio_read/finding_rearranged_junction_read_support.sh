#Genome indexing
bwa index Gallus_gallus.GRCg6a.dna_sm.toplevel.fa.gz
#mapping of PacBio
for i in SRR6189090_subreads.fastq.gz
do
bwa bwasw -t 64 -a2 -b3 -q2 -r2 -z1 Gallus_gallus.GRCg6a.dna_sm.toplevel.fa.gz $i > "$i".sam
samtools view -bhS -@ 64 "$i".sam > "$i".bam
samtools sort "$i".bam -@ 64 -o "$i".sorted.bam
samtools index  "$i".sorted.bam
done


#PacBiodata
#convert bam to bed
bedtools bamtobed -i SRR6189090_subreads.fastq.gz.sorted.bam > SRR6189090.bed

#makeregion_bedfile
#20	10766772	10894151	DUP1
#20	11306686	11477501	DUP2
#20	10566770	10766771	FLANK1
#20	11477502	11677502	FLANK2
#20	10894152	11306685	INT

#bedtools intersect 
for i in FLANK1.bed DUP1.bed INT.bed DUP2.bed FLANK2.bed
do
bedtools intersect -a SRR6189090.bed -b $i >"$i"_intersect
done

#sortfile
for i in *intersect;do cut -f4 $i |sort -u  >$i.sort;done

#cheak common ids between two different regions 
cat FLANK1.bed_intersect.sort DUP1.bed_intersect.sort |sort |uniq -c |sed 's/      //g' |sed 's/ /\t/g' |awk '$1>1{print $2}'>flank1_dup1_reads
cat FLANK1.bed_intersect.sort INT.bed_intersect.sort |sort |uniq -c |sed 's/      //g' |sed 's/ /\t/g' |awk '$1>1{print $2}'>flank1_INT_reads
cat FLANK1.bed_intersect.sort DUP2.bed_intersect.sort |sort |uniq -c |sed 's/      //g' |sed 's/ /\t/g' |awk '$1>1{print $2}'>flank1_dup2_reads
cat FLANK1.bed_intersect.sort FLANK2.bed_intersect.sort |sort |uniq -c |sed 's/      //g' |sed 's/ /\t/g' |awk '$1>1{print $2}'>flank1_flank2_reads

cat DUP1.bed_intersect.sort INT.bed_intersect.sort |sort |uniq -c |sed 's/      //g' |sed 's/ /\t/g' |awk '$1>1{print $2}'>dup1_int_reads
cat DUP1.bed_intersect.sort DUP2.bed_intersect.sort |sort |uniq -c |sed 's/      //g' |sed 's/ /\t/g' |awk '$1>1{print $2}'>dup1_dup2_reads
cat DUP1.bed_intersect.sort FLANK2.bed_intersect.sort |sort |uniq -c |sed 's/      //g' |sed 's/ /\t/g' |awk '$1>1{print $2}'>dup1_flank2_reads

cat INT.bed_intersect.sort DUP2.bed_intersect.sort |sort |uniq -c |sed 's/      //g' |sed 's/ /\t/g' |awk '$1>1{print $2}' > int_dup2_reads
cat INT.bed_intersect.sort FLANK2.bed_intersect.sort |sort |uniq -c |sed 's/      //g' |sed 's/ /\t/g' |awk '$1>1{print $2}' > int_flank2_reads

cat DUP2.bed_intersect.sort FLANK2.bed_intersect.sort |sort |uniq -c |sed 's/      //g' |sed 's/ /\t/g' |awk '$1>1{print $2}' >dup2_flank2_reads


#extract the fasta sequence 
for i in `cat dup1_dup2_reads`;do zcat SRR6189090_subreads.fastq.gz |grep -w -A1 "$i" >"$i".fa;done


ls -f1 *fa |grep -v "gal" >q.list

for i in `cat q.list`
do 
sed -i 's/@/>@/g' $i
done

#run the  blastn in genome for cheak the directions of reads
ls -f1 *fa |grep -v gal >q.list
for q in `cat q.list`
do
i="Gallus_gallus.GRCg6a.dna_sm.toplevel.fa"
makeblastdb -in $i -out $i -dbtype nucl 
blastn -task blastn -evalue 0.01 -db $i -out blastn_"$i"_DNA_"$i"_"$q".out -num_threads 2 -outfmt 1 -query $q
done

####################################################################################################################
##for finding more reads in packbio did blastn with  PacBio raw read with query extracted from above

zcat SRR6189090_subreads.fastq.gz|sed -n '1~4s/^@/>/p;2~4p' > SRR6189090.fa
ls -f1 *fa |grep -v gal >q.list
for q in `cat q.list`
do
i="SRR6189090.fa"
makeblastdb -in $i -out $i -dbtype nucl 
blastn -task blastn -evalue 0.01 -db $i -out blastn_"$i"_DNA_"$i"_"$q".out -num_threads 2 -outfmt 1 -query $q
done
