#Run angsd  for different regions Flank1,Dup1,Int,Dup2,Flank2 using genotype likelihood approach and genarate beagle.gz format
angsd -GL 2 -out genolike_34_flank1 -nThreads 32 -minMapQ 30 -minQ 20 -doGlf 2 -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1 -bam 34.allblack.list -r 20:10263555-10766771

angsd -GL 2 -out genolike_34_dup1 -nThreads 32 -minMapQ 30 -minQ 20 -doGlf 2 -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1 -bam 34.allblack.list -r 20:10766772-10894151

angsd -GL 2 -out genolike_34_int -nThreads 32 -minMapQ 30 -minQ 20 -doGlf 2 -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1 -bam 34.allblack.list -r 20:10894152-11306685

angsd -GL 2 -out genolike_34_dup2 -nThreads 32 -minMapQ 30 -minQ 20 -doGlf 2 -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1 -bam 34.allblack.list -r 20:11306686-11477501

angsd -GL 2 -out genolike_34_flank2 -nThreads 32 -minMapQ 30 -minQ 20 -doGlf 2 -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1 -bam 34.allblack.list -r 20:11477502-11980000



##using beagle.gz format as input in pcangsd get estimated covariance matrix in .cov output file
for i in genolike_34_flank1.beagle.gz genolike_34_dup1.beagle.gz genolike_34_int.beagle.gz genolike_34_dup2.beagle.gz genolike_34_flank2.beagle.gz
do
python pcangsd.py -beagle $i -o $i.cov -threads 32
done

