#angsd_new_version_kadaknath/angsd/angsd -GL 2 -out genolike_101 -nThreads 32 -minMapQ 30 -minQ 20 -doGlf 2 -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1 -bam 101.PCA_bamlist

#python all_pca/pca_74/pcangsd/pcangsd.py -beagle genolike_101.beagle.gz -o genolike_101.cov -threads 32

