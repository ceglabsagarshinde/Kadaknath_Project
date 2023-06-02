#subset vcf file for CHIN and KADK individuals and remove missing data
for i in *.vcf
do
bcftools view -S kadk_chine.list -O z -o $i.bcftools_18ind.vcf.gz $i
vcftools --gzvcf $i.bcftools_18ind.vcf.gz --remove-indels --max-alleles 2 --max-missing 0.95 --recode --recode-INFO-all --out $i.bcftools_18ind.final.vcf
done


#convert vcf file to phased vcf file for each chromosome 

VCF=$1

echo ${VCF%_u*}
# add the phased suffix
echo ${VCF%_u*}_phased
# now we're happy with this, assign a new variable
OUTPUT=${VCF%_u*}_phased

shapeit --input-vcf $VCF -O $OUTPUT --window 0.1 -T 4 

shapeit -convert --input-haps ${OUTPUT} --output-vcf ${OUTPUT}.vcf

bgzip ${OUTPUT}.vcf
bcftools index ${OUTPUT}.vcf.gz



#subset Vcf file KADK and CHIN pop seperately
for i in *phased.vcf.gz
do
a=`echo $i |cut -f1 -d "_"`
bcftools view -S chinese.list -O z -o $a.Chinese.vcf.gz $i
done

for i in *phased.vcf.gz
do
a=`echo $i |cut -f1 -d "_"`
bcftools view -S kadak.list -O z -o $a.KADK.vcf.gz $i
done


calculate ihs and xpehh for 1 to Z chromosome
for i in `cat list`; do sed "s/aaa/$i/g" script.txt >>ihs_xpEHH.R ; done

#make single file for all chromosme KADK seperate and CHIN seperate and calculate mean_of each population calculate mean in 50 kb window 

#ihs KADK
cat KADK_ihs_bcf* |sed 's/"//g' |grep -v "NA" |grep -v "ihs.CHR" >kadak_ihs.txt 
sed 's/ /\t/g' kadak_ihs.txt |awk '{print $2"\t"$3"\t"$3"\t"$4}' |grep -v "ihs.POSITION"  >kadk_ihs.bed
grep -v "MT" window50kb.bed |grep -v "W" |grep -v "AA" |grep -v "K" |sort -V >50KB.bed
bedtools map -a 50KB.bed -b kadk_ihs.bed -c 4 -o mean >final.kadk_ihs.bed.txt

#ihs CHIN
cat CHIN_ihs* |sed 's/"//g' |grep -v "NA" |grep -v "ihs.CHR" >china_ihs.txt
sed 's/ /\t/g' china_ihs.txt |awk '{print $2"\t"$3"\t"$3"\t"$4}' |grep -v "ihs.POSITION"  >china_ihs.bed
bedtools map -a 50KB.bed -b china_ihs.bed -c 4 -o mean >final.china_ihs.bed.txt


#XPEHH
cat KADK_CHIN_xpehh* |sed 's/"//g' |grep -v "NA" >KADK_CHIN_xpehh.txt
awk '{print $2"\t"$3"\t"$3"\t"$8}' KADK_CHIN_xpehh.txt |grep -v "LOGPVALUE" >KADK_CHIN_xpehh.txt.bed
 bedtools map -a 50KB.bed -b KADK_CHIN_xpehh.txt.bed -c 4 -o mean >final.KADK_CHIN_xpehh.txt.bed.txt



