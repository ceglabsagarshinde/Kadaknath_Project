bam-readcount -f Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -w 0 SRR17981951_chr20_Fm_locus_subseted.bam -l dup2.bed > SRR17981951_chr20_Fm_locus_subseted.bam.txt

for j in *txt;do cut -f 1-4,6-9 $j|sed 's/:/\t/g'|cut -f 1-4,5,6,19,20,33,34,47,48 > $j.count;done


for i in `cat SRR17981951_chr20_Fm_locus_subseted.bam.txt.count|sed 's/\t/_/g'`
do
val1=`echo $i|cut -f 6,8,10,12 -d '_'|tr "_" "\n"|sort -k1n,1|tail -n 1`
val2=`echo $i|cut -f 6,8,10,12 -d '_'|tr "_" "\n"|sort -k1n,1|tail -n 2|head -n 1`
echo $val1 $val2|awk -v rat=$i '$1>10 && $2>10{print rat}'|sed 's/_/\t/g' >> atleast_10_two_alleles3.txt
done




cat atleast_20_two_alleles3.txt atleast_10_two_alleles3.txt |cut -f2 |sort |uniq -c |awk '$1==1{print $0}' |awk '{print $2}' >uniq_10_co.list

sed -n '1,1000p'  uniq_10_co.list >1
sed -n '1001,2000p' uniq_10_co.list >2
sed -n '2001,3000p' uniq_10_co.list >3 
sed -n '3001,4000p' uniq_10_co.list >4 
sed -n '4001,5000p' uniq_10_co.list >5
sed -n '5001,6000p' uniq_10_co.list >6
sed -n '6001,7000p' uniq_10_co.list >7
sed -n '7001,8000p' uniq_10_co.list >8 
sed -n '8001,9000p' uniq_10_co.list >9 
sed -n '9001,10000p' uniq_10_co.list >10
sed -n '10001,10860p' uniq_10_co.list >11


i in {1..11..1}; do  mkdir $i.list; done


for i in {1..11..1}; do  cp $i $i.list; done

######################################################################################################################################
for i in `cat 1`
do
kl="Fm_locus_SRR17968711_12"
echo -ne "20\t$i\tA\tHapA\n" > ATGC.tsv
echo -ne "20\t$i\tT\tHapT\n" >> ATGC.tsv
echo -ne "20\t$i\tG\tHapG\n" >> ATGC.tsv
echo -ne "20\t$i\tC\tHapC\n" >> ATGC.tsv
java -jar /media/morpheus/sagar/kadak_part2/nano_pore_read_haplo/atlist10_file/jvarkit/dist/biostar214299.jar --samoutputformat BAM -p ATGC.tsv Fm_locus_merged.sorted.bam > "$i"_"$kl".bam
samtools sort -@16 "$i"_"$kl".bam -o "$i"_"$kl".sorted.bam;
samtools index "$i"_"$kl".sorted.bam;

for hapcount in A T G C
do
samtools view -@16 -b -r Hap"$hapcount" "$i"_"$kl".sorted.bam > "$i"_hap"$hapcount".bam
samtools fasta "$i"_hap"$hapcount".bam > "$i"_hap"$hapcount".fa
grep ">" "$i"_hap"$hapcount".fa|sed 's/>//g'|sort -u > "$i"_hap"$hapcount".list
done

mv *.list readlists

rm "$i"_"$kl".bam "$i"_"$kl".sorted.bam "$i"_"$kl".sorted.bam.bai "$i"_hap*.bam "$i"_hap*.fa
done

####################################################################################################################################
for pos2 in "$1"
do
pos1="$2"

count_AA=`cat "$pos1"_hapA.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_AT=`cat "$pos1"_hapA.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_AG=`cat "$pos1"_hapA.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_AC=`cat "$pos1"_hapA.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


count_TA=`cat "$pos1"_hapT.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_TT=`cat "$pos1"_hapT.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_TG=`cat "$pos1"_hapT.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_TC=`cat "$pos1"_hapT.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


count_GA=`cat "$pos1"_hapG.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_GT=`cat "$pos1"_hapG.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_GG=`cat "$pos1"_hapG.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_GC=`cat "$pos1"_hapG.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


count_CA=`cat "$pos1"_hapC.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_CT=`cat "$pos1"_hapC.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_CG=`cat "$pos1"_hapC.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_CC=`cat "$pos1"_hapC.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


echo $count_AA AA > temp.counts; echo $count_AT AT >> temp.counts; echo $count_AG AG >> temp.counts; echo $count_AC AC >> temp.counts; echo $count_TA TA >> temp.counts; echo $count_TT TT >> temp.counts; echo $count_TG TG >> temp.counts; echo $count_TC TC >> temp.counts; echo $count_GA GA >> temp.counts; echo $count_GT GT >> temp.counts; echo $count_GG GG >> temp.counts; echo $count_GC GC >> temp.counts; echo $count_CA CA >> temp.counts; echo $count_CT CT >> temp.counts; echo $count_CG CG >> temp.counts; echo $count_CC CC >> temp.counts;

haps=`sort -k1n,1 temp.counts|awk '$1>5{print $0}'|sed 's/ /_/g'|tr "\n" ","`

echo $pos1 $pos2 $count_AA $count_AT $count_AG $count_AC $count_TA $count_TT $count_TG $count_TC $count_GA $count_GT $count_GG $count_GC $count_CA $count_CT $count_CG $count_CC $haps
done

