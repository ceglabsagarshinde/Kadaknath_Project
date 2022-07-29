angsd -GL 2 -out genolike_34_int -nThreads 32 -minMapQ 30 -minQ 20 -doGlf 2 -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1 -bam 34.allblack.list -r 20:10894152-11306685


for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
do
j=`ls *.beagle.gz`
NGSadmix -likes $j -K $i -P 24 -o $i.admixture -minMaf 0.05 -minInd 24
done

