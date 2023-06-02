#calculate Dxy using 1Kb window
python popgenWindows.py -g commons_bcftools_SNPs_only.vcf.gz.geno.gz -o subset.Fst.Dxy.pi.1kb.csv.gz -f phased -w 1000 -s 1000 -p FM -p NON_FM --popsFile poplistFM_NONFM 

#subset the Dxy out file for Fm region
grep "^20" subset.Fst.Dxy.pi.1kb.csv >20_subset.Fst.Dxy.pi.1kb.csv
awk '$3>10263555{print $0}' 20_subset.Fst.Dxy.pi.1kb.csv |awk '$3<11980000{print $0}' >final_20_subset.Fst.Dxy.pi.1kb.csv


#calculate Fst between 34 black vs 67 non-black individuals
pop="Black"
angsd -GL 2 -ref Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -anc Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -dosaf 1 -baq 1 -C 50 -setMinDepthInd 4 -minInd 3 -minMapQ 30 -minQ 20 -b Black34.list -nThreads 16 -out "$pop" -r 20:10262555-11989000
realSFS "$pop".saf.idx -P 24 -fold 1 -r 20:10262555-11989000 > "$pop".sfs
realSFS saf2theta "$pop".saf.idx -outname "$pop" -sfs "$pop".sfs -fold 1 -r 20:10262555-11989000
#Estimate for every Chromosome/scaffold
thetaStat do_stat "$pop".thetas.idx
#Do a sliding window analysis based on the output from the make_bed command.
thetaStat do_stat "$pop".thetas.idx -win 50000 -step 50000 -outnames "$pop".thetasWindow.gz


pop="Nonblack"
angsd -GL 2 -ref Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -anc Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -dosaf 1 -baq 1 -C 50 -setMinDepthInd 4 -minInd 3 -minMapQ 30 -minQ 20 -b Nonblack67.list -nThreads 16 -out "$pop" -r 20:10262555-11989000
realSFS "$pop".saf.idx -P 24 -fold 1 -r 20:10262555-11989000 > "$pop".sfs
realSFS saf2theta "$pop".saf.idx -outname "$pop" -sfs "$pop".sfs -fold 1 -r 20:10262555-11989000
#Estimate for every Chromosome/scaffold
thetaStat do_stat "$pop".thetas.idx
#Do a sliding window analysis based on the output from the make_bed command.
thetaStat do_stat "$pop".thetas.idx -win 50000 -step 50000 -outnames "$pop".thetasWindow.gz

#calculate the 2dsfs prior
realSFS Black.saf.idx Nonblack.saf.idx -P 24 >Black.Nonblack.ml
#prepare the Fst for easy window analysis etc
realSFS fst index Black.saf.idx Nonblack.saf.idx -sfs Black.Nonblack.ml -fstout Black.Nonblack

#calculate Fst in 1Kb window
for i in Black.Nonblack.fst.idx
do
realSFS fst stats2 $i -win 1000 -step 1000 >$i.1kb
done
