angsd -GL 2 -out genolike_allblack101_all_autosomes -minMapQ 30 -minQ 20 -doGlf 2 -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1 -bam 101.PCA_bamlist -rf autosomes.bed





for i in 2 3 4 5 6 7 8 9 10
do
NGSadmix -likes genolike_allblack101_all_autosomes.beagle.gz -K $i -P 32 -o $i.admixture -minMaf 0.05 -minInd 70
done

