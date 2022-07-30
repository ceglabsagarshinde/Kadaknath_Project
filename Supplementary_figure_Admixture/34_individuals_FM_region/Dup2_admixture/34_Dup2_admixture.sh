
#Run angsd  for different regions Dup2 using genotype likelihood approach and genarate beagle.gz format
angsd -GL 2 -out genolike_34_dup2 -nThreads 32 -minMapQ 30 -minQ 20 -doGlf 2 -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1 -bam 34.allblack.list -r 20:11306686-11477501

##using beagle.gz format as input in NGSadmix get estimated covariance matrix in .cov output file
for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
do
j=`ls *.beagle.gz`
NGSadmix -likes $j -K $i -P 24 -o $i.admixture -minMaf 0.05 -minInd 24
done

