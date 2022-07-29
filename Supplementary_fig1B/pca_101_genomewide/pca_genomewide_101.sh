## For the genomewide PCA analysis of 101 individuals use genotype likelihood approach and genarate beagle.gz format using ANGSD
angsd -GL 2 -out genolike_101 -nThreads 32 -minMapQ 30 -minQ 20 -doGlf 2 -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1 -bam 101.PCA_bamlist
##using beagle.gz format as input in pcangsd get estimated covariance matrix in .cov output file
python pcangsd.py -beagle genolike_101.beagle.gz -o genolike_101.cov -threads 32

