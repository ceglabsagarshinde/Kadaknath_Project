#Run angsd only for autosomes using genotype likelihood approach and genarate beagle.gz format
angsd -GL 2 -out genolike_allblack101_all_autosomes -minMapQ 30 -minQ 20 -doGlf 2 -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1 -bam 101.PCA_bamlist -rf autosomes.bed

##using beagle.gz format as input in pcangsd get estimated covariance matrix in .cov output file
python pcangsd.py -beagle genolike_allblack101_all_autosomes.beagle.gz -o genolike_allblack101_all_autosomes.cov -threads 24

