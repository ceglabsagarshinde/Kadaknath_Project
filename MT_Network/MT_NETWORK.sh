##extract the whole mitocondrial sequence 

for i in `cat 33.black_individuals`
do
samtools mpileup -uf Gallus_gallus.GRCg6a.dna_sm.toplevel.fa $i -C 50 -Q 20 -q 20 -r MT | bcftools call -c | vcfutils.pl vcf2fq > $i.MT_cns.fastq
done


#convert fastq to fasta format
for i in *bam.MT_cns.fastq;do seqtk seq -q20 -n N $i > $i.fasta;done

cat *cns.fastq.fasta > all.fasta

#make final sequence  
grep -A1 "@" all.fasta |sed 's/@/>/g'  >final.fasta

grep -v "!" final.fasta  |sed 's/-//g' |grep -v "~" |sed '/^>/s/$/@/' |sed -z 's/\n//g' |sed 's/>/\n>/g' |sed 's/@/\n/g' >output_Whole_MT_genome_33_BBC.fa
#remove the characters except (A,T,G,C) with - using sed

##We aligned the 33 MT sequence for PopART software in nexus format (33_black.mt.nexus). For SplitsTree takes input in .fasta format which is used for the (output_Whole_MT_genome_33_BBC.fa) median-joining method 
