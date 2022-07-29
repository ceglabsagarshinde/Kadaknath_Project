angsd -GL 2 -out genolike_allblack34_all_autosomes -nThreads 24 -minMapQ 30 -minQ 20 -doGlf 2 -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1 -bam 34.allblack.list -rf autosomes.bed


for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
do
NGSadmix -likes genolike_allblack34_all_autosomes.beagle.gz -K $i -P 32 -o $i.admixture -minMaf 0.05 -minInd 24
done

