#calculate the coverage Fm region in 1Kb window
bedtools makewindows -g Gallus_gallus.GRCg6a.dna_sm.toplevel.fa.fai -w 1000 -s 1000 >window.bed
for i in `cat 101.PCA_bamlist`;do bedtools coverage -counts -sorted -a window.bed -b $i > $i.cov; done 


#calculate Fst between black vs non-black individuals
pop="Black"
angsd -GL 2 -ref Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -anc Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -dosaf 1 -baq 1 -C 50 -setMinDepthInd 4 -minInd 3 -minMapQ 30 -minQ 20 -b Black34.list -nThreads 16 -out "$pop" -r 20:10262555-11989000
realSFS "$pop".saf.idx -P 24 -fold 1 -r 20:10262555-11989000 > "$pop".sfs
realSFS saf2theta "$pop".saf.idx -outname "$pop" -sfs "$pop".sfs -fold 1 -r 20:10262555-11989000
#Estimate for every Chromosome/scaffol
thetaStat do_stat "$pop".thetas.idx
#Do a sliding window analysis based on the output from the make_bed command.
thetaStat do_stat "$pop".thetas.idx -win 50000 -step 50000 -outnames "$pop".thetasWindow.gz


pop="Nonblack"
angsd -GL 2 -ref Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -anc Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -dosaf 1 -baq 1 -C 50 -setMinDepthInd 4 -minInd 3 -minMapQ 30 -minQ 20 -b Nonblack67.list -nThreads 16 -out "$pop" -r 20:10262555-11989000
realSFS "$pop".saf.idx -P 24 -fold 1 -r 20:10262555-11989000 > "$pop".sfs
realSFS saf2theta "$pop".saf.idx -outname "$pop" -sfs "$pop".sfs -fold 1 -r 20:10262555-11989000
#Estimate for every Chromosome/scaffol
thetaStat do_stat "$pop".thetas.idx
#Do a sliding window analysis based on the output from the make_bed command.
thetaStat do_stat "$pop".thetas.idx -win 50000 -step 50000 -outnames "$pop".thetasWindow.gz

#calculate the 2dsfs prior
realSFS Black.saf.idx Nonblack.saf.idx -P 24 >Black.Nonblack.ml
#prepare the fst for easy window analysis etc
realSFS fst index Black.saf.idx Nonblack.saf.idx -sfs Black.Nonblack.ml -fstout Black.Nonblack

#calculate Fst in 1bp and 1Kb window
for i in Black.Nonblack.fst.idx
do
realSFS fst stats2 $i -win 1 -step 1 >$i.1bp
realSFS fst stats2 $i -win 1000 -step 1000 >$i.1kb
done

#convert big file to small size file
cut -f2,3,5 Black.Nonblack.fst.idx.1bp  >Fst.txt

#run the Rscipt
Rscript plot_black_nonblack66.R
