#convert vcf file to geno format
python VCF_processing/parseVCF.py -i commons_snps_bcftools.vcf.recode.vcf --skipIndels| bgzip > commons_bcftools_SNPs_only.vcf.gz.geno.gz

#convert geno file to ABBA-BABA pattern 50Kb window (P1=KADK,P2=CHIN,P3=BROC,0=RJF)
python ABBABABAwindows.py -g commons_bcftools_SNPs_only.vcf.gz.geno.gz -f phased -o KADK_CHIN_BROC_RJF_50KB_no_goodsite.csv.gz -P1 KADK -P2 CHIN -P3 BROC -O RJF --popsFile pop.info -w 50000 -s 50000 --T 2
#convert geno file to ABBA-BABA pattern 50Kb window (P1=KADK,P2=CHIN,P3=CWLH,0=RJF)
python ABBABABAwindows.py -g commons_bcftools_SNPs_only.vcf.gz.geno.gz -f phased -o KADK_CHIN_CWLH_RJF_50KB_no_goodsite.csv.gz -P1 KADK -P2 CHIN -P3 CWLH -O RJF --popsFile pop.info -w 50000 -s 50000 --T 2
#convert geno file to ABBA-BABA pattern 50Kb window (P1=KADK,P2=CHIN,P3=RIRL,0=RJF)
python ABBABABAwindows.py -g commons_bcftools_SNPs_only.vcf.gz.geno.gz -f phased -o KADK_CHIN_RIRL_RJF_50KB_no_goodsite.csv.gz -P1 KADK -P2 CHIN -P3 RIRL -O RJF --popsFile pop.info -w 50000 -s 50000 --T 2
#convert geno file to ABBA-BABA pattern 50Kb window (P1=KADK,P2=CHIN,P3=WHLL,0=RJF)
python ABBABABAwindows.py -g commons_bcftools_SNPs_only.vcf.gz.geno.gz -f phased -o KADK_CHIN_WHLL_RJF_50KB_no_goodsite.csv.gz -P1 KADK -P2 CHIN -P3 WHLL -O RJF --popsFile pop.info -w 50000 -s 50000 --T 2

