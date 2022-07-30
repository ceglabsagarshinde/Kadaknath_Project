## For the genomewide Admixture analysis of 101 individuals use genotype likelihood approach and genarate beagle.gz format using ANGSD
angsd -GL 2 -out genolike_101 -nThreads 32 -minMapQ 30 -minQ 20 -doGlf 2 -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1 -bam 101.PCA_bamlist

##using beagle.gz format as input in NGSadmix get estimated covariance matrix in .cov output file
for j in {1..15}
do
for i in {1..15}
do 
echo NGSadmix -likes genolike_101.beagle.gz -minMaf 0.05 -K $i -P 24 -o 101_"$i"_"$j" -minInd 70
done
done

