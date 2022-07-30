#calculate within pop statistics (Pi, theta, Tajima's D, SFS)
pop="pop"
angsd -GL 2 -ref Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -anc Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -dosaf 1 -baq 1 -C 50 -setMinDepthInd 6 -minInd 9 -minMapQ 30 -minQ 20 -b pop.list -nThreads 16 -out "$pop" -doCounts 1
realSFS "$pop".saf.idx -P 32 -fold 1 > "$pop".sfs
realSFS saf2theta "$pop".saf.idx -outname "$pop" -sfs "$pop".sfs -fold 1
#Estimate for every Chromosome/scaffold
thetaStat do_stat "$pop".thetas.idx
#Do a sliding window analysis based on the output from the make_bed command.
thetaStat do_stat "$pop".thetas.idx -win 50000 -step 50000 -outnames "$pop".thetasWindow.gz



#Fst between KADK and Commercial chicken breeds (WHLL) 

realSFS KADAKNATH_9IND.saf.idx WHLL.saf.idx -P 32 > kadk_9ind.WHLL_3ind.ml
realSFS fst index KADAKNATH_9IND.saf.idx WHLL.saf.idx -sfs kadk_9ind.WHLL_3ind.ml -fstout kadk_9ind.WHLL_3ind


#Fst between CHIN and Commercial chicken breeds (WHLL) 
r
realSFS CHINA_9IND.saf.idx WHLL.saf.idx -P 32 > chine_9ind.WHLL_3ind.ml
realSFS fst index CHINA_9IND.saf.idx WHLL.saf.idx -sfs chine_9ind.WHLL_3ind.ml -fstout chine_9ind.WHLL_3ind


#generate 50Kb fst output using Angsd between KADK and CHIN
realSFS KADAKNATH_9IND.saf.idx CHINA_9IND.saf.idx -P 32 > kadk_9ind.china_9ind.ml
realSFS fst index KADAKNATH_9IND.saf.idx CHINA_9IND.saf.idx -sfs kadk_9ind.china_9ind.ml -fstout kadk_9ind.china_9ind

#Fst in 50kb window
for i in *fst.idx;do realSFS fst stats2 $i -win 50000 -step 50000 >$i.50kb;done

#
for i in *50kb; do sed 's/(/\t(/3' $i|awk '{print $1,$2"_"$3,$4,$5,$6}' |sed 's/ /\t/g' > $i.column; done

for i in *.column; do sed 's/_/\t/g' $i |sed 's/(//3' |sed 's/)//3' |sed 's/,/\t/3' |awk '{print $2"\t"$3"\t"$4"\t"$7}'|awk '{print $3"\t"$1"\t"$2"\t"$4}' |grep -v "chr" |sort -V |awk '{print $2"\t"$3"\t"$1"\t"$4"\t"$1}' |sed '1s/^/BP\tSNP\tCHR\tP\tchr\n/g'| grep -v -w "W"|grep -v "AA" > $i.txt; done

##extract only autosomes fst
for i in *column.txt ;do grep -v -w "Z" $i >$i.autosome.txt; done

#for CHIN  vs. KADK fst autosomes
for i in *column.txt ;do grep -v -w "Z" $i >$i.AUTOSOME.txt; done



#calculate abba baba pattern  between three population
#convert vcf file to geno format
python VCF_processing/parseVCF.py -i commons_snps_bcftools.vcf.recode.vcf --skipIndels| bgzip > commons_bcftools_SNPs_only.vcf.gz.geno.gz

#convert geno file to ABBA-BABA pattern *csv format in 50Kb window (P1=KADK,P2=CHIN,P3=WHLL,0=RJF)
python ABBABABAwindows.py -g commons_bcftools_SNPs_only.vcf.gz.geno.gz -f phased -o KADK_CHIN_WHLL_RJF_50KB_no_goodsite.csv.gz -P1 KADK -P2 CHIN -P3 WHLL -O RJF --popsFile pop.info -w 50000 -s 50000 --T 2






































