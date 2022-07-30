
#Run angsd only for autosomes using genotype likelihood approach and genarate beagle.gz format
angsd -GL 2 -out genolike_allblack101_all_autosomes -minMapQ 30 -minQ 20 -doGlf 2 -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1 -bam 101.PCA_bamlist -rf autosomes.bed




##using beagle.gz format as input in NGSadmix get estimated covariance matrix in .cov output file
for i in 2 3 4 5 6 7 8 9 10
do
NGSadmix -likes genolike_allblack101_all_autosomes.beagle.gz -K $i -P 32 -o $i.admixture -minMaf 0.05 -minInd 70
done

