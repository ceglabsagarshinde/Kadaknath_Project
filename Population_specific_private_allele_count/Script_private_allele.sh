#calculate private allele
#extract the coloums from vcf file where each population's individuals information for ancestral and derived allele status
grep -v "##" commons_snps_bcftools.vcf.recode.vcf |cut -f1,2,4,5,10,11-130|sed 's/:/\t/g'|cut -f1,2,3,4,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47,49,51,53,55,57,59,61,63,65,67,69,71,73,75,77,79,81,83,85,87,89,91,93,95,97,99,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167,169,171,173,175,177,179,181,183,185,187,189,191,193,195,197,199,201,203,205,207,209,211,213,215,217,219,221,223,225,227,229,231 >commons_snps_bcftools.vcf.recode.vcf.list

grep -v "#" commons_snps_bcftools.vcf.recode.vcf.list >aaa
grep "#CH" commons_snps_bcftools.vcf.recode.vcf |cut -f1,2,4,5,10-140 >b
cat b aaa >final.list


#run on each population individuals.minimum two individuals should show private site for respective population
for i in `cat kadkconbination.list`;
do
j=`echo $i |cut -f1 -d "_"`
k=`echo $i |cut -f2 -d "_"`
sed "s/aaa/$j/g" script.kadk.txt|sed "s/bbb/$k/g" >>kadkanath_specific.sh
done



#each population private allele count provided in file with and without dbSNP database. 
