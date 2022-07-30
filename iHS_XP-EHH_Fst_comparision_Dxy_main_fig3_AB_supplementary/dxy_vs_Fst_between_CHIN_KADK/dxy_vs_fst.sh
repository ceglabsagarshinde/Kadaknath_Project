#convert vcf to geno format
python parseVCF.py -i commons_snps_bcftools.vcf.recode.vcf --skipIndels| bgzip > commons_bcftools_SNPs_only.vcf.gz.geno.gz


#calculate Dxy and Fst of autosomes
popgenWindows.py -g commons_bcftools_SNPs_only.vcf.gz.geno.gz -o subset.Fst.Dxy.pi.csv.gz -f phased -w 50000 -s 50000 -p KADK -p CHIN --popsFile pop.info

sed 's/,/\t/g' subset.Fst.Dxy.pi.csv > dxy.txt
