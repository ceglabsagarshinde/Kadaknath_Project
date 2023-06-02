#angsd Fst output
kadk_9ind.china_9ind.50kb.column.txt

#convert vcf to geno format of autosomes
python parseVCF.py -i commons_snps_bcftools.vcf.recode.vcf --skipIndels| bgzip > commons_bcftools_SNPs_only.vcf.gz.geno.gz


#convert Zchr vcf to zchr.geno format
python parseVCF.py -i Z.bcftools.vcf_common.snp.recode.vcf --skipIndels| bgzip > Z.bcftools.vcf_common.geno.gz

#calculate Fst of autosomes
popgenWindows.py -g commons_bcftools_SNPs_only.vcf.gz.geno.gz -o subset.Fst.Dxy.pi.csv.gz -f phased -w 50000 -s 50000 -p KADK -p CHIN --popsFile pop.info

#calculate Fst of Z chromosomes
python popgenWindows.py -g Z.bcftools.vcf_common.geno.gz -o Z_subset.Fst.Dxy.pi.csv.gz -f phased -w 50000 -s 50000 -p KADK -p CHIN --popsFile pop.info

#merge autosomes and Z
sed 's/,/\t/g' subset.Fst.Dxy.pi.csv > dxy.txt

sed 's/,/\t/g' Z_subset.Fst.Dxy.pi.csv > zdxy

cat dxy.txt zdxy >dxy.50kb.txt

#calculate Fst   
awk '{print $1"\t"$2"\t"$3"\t"$9"\t"$1}' dxy.50kb.txt  >Fst_50KB.PYTHON.txt  


awk '{print $2"\t"$3"\t"$1"\t"$4"\t"$1}' Fst_50KB.PYTHON.txt >
Fst_50KB.PYTHON_result.txt
#add one line
#BP	SNP	CHR	P	chr
#convert to manhattan format
##add numbers in 5th column chromosome wise 
for i in `cut -f3 Fst_50KB.PYTHON_result.txt|sort |uniq -c|grep -v "CHR" |cat -n |awk '{print $1+1"_"$3}' |sed '1,32d'`
do
j=`echo $i|sed 's/_.*//g'`
k=`echo $i|sed  's/.._//g'`
for m in Fst_50KB.PYTHON_result.txt
do
sed -i "s/$k/$j/ 2" $m
done
done














