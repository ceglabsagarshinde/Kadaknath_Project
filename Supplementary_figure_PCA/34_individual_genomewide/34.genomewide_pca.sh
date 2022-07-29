## For the genomewide PCA analysis of 34 black-bone individuals use genotype likelihood approach and genarate beagle.gz format using ANGSD
angsd -GL 2 -out genolike_allblack34 -nThreads 32 -minMapQ 30 -minQ 20 -doGlf 2 -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1 -bam 34.allblack.list
##using beagle.gz format as input in pcangsd get estimated covariance matrix in .cov output file
python pcangsd.py  -beagle genolike_allblack34.beagle.gz -o genolike_34.cov -threads 32


