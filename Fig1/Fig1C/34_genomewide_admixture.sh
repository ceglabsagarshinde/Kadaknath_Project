## For the genomewide PCA analysis of 34 BBC individuals use genotype likelihood approach and genarate beagle.gz format using ANGSD
angsd -GL 2 -out genolike_allblack34 -nThreads 32 -minMapQ 30 -minQ 20 -doGlf 2 -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1 -bam 34.allblack.list

##using beagle.gz format as input in NGSadmix get individual admixture proportions for different K
for j in {1..10}
do
for i in 1
do 
NGSadmix -likes genolike_allblack34.beagle.gz -minMaf 0.05 -K $i -P 24 -o 34_"$i"_"$j" -minInd 23
done
done

