#run snphylo for 101 individuals
snphylo.sh -v commons_snps_bcftools.vcf.recode.vcf -P common_bcftools.out -B 1000 -t 8 -a 33
snphylo.sh -v commons_snps_freebayes.vcf.recode.vcf -P common_freebayes.out -B 1000 -t 8 -a 33

#subset 34 black sample and make new vcf
for i in commons_snps_bcftools.vcf.recode.vcf commons_snps_freebayes.vcf.recode.vcf
do
bcftools view -S black.list -O z -o "$i".black_pop.vcf.gz $i
done

#run snphylo for 34 individuals
snphylo.sh -v commons_snps_bcftools.vcf.recode.vcf.black_pop.vcf -P common_black_bcftools.out -B 1000 -t 8 -a 33

snphylo.sh -v commons_snps_freebayes.vcf.recode.vcf.black_pop.vcf -P common_black_freebayes.out -B 1000 -t 8 -a 33


