
#Make vcf files for Dup1 and Dup2 regions 
bcftools mpileup --threads 4 -f Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -b 101.PCA_bamlist -C 50 -Q 20 -q 20 -r 20:10766772-10894151 | bcftools call --threads 4 -mv -o dup1.bcftools.vcf

bcftools mpileup --threads 4 -f Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -b 101.PCA_bamlist -C 50 -Q 20 -q 20 -r 20:11306686-11477501 | bcftools call --threads 4 -mv -o dup2.bcftools.vcf

#merge vcf file
java -jar picard.jar MergeVcfs I=dup1.bcftools.vcf I=dup2.bcftools.vcf O=Dup1_Dup2_merged.vcf

#remove indels
vcftools --vcf Dup1_Dup2_merged.vcf --remove-indels --recode --recode-INFO-all --out Dup1_Dup2_merged.vcf


bgzip -c Dup1_Dup2_merged.vcf.recode.vcf > Dup1_Dup2_merged.vcf.recode.vcf.gz
tabix -p vcf Dup1_Dup2_merged.vcf.recode.vcf.vcf.gz

#phylogeny 
vk phylo tree nj Dup1_Dup2_merged.vcf.recode.vcf.vcf.gz >dup1_dup2_nj.nwk
vk phylo tree upgma Dup1_Dup2_merged.vcf.recode.vcf.vcf.gz >dup1_dup2_upgma.nwk

