#calculate within pop Statistics (PI,theta,tajima) for each population

pop="pop"
angsd -GL 2 -ref Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -anc Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -dosaf 1 -baq 1 -C 50 -setMinDepthInd 6 -minInd 9 -minMapQ 30 -minQ 20 -b pop.list -nThreads 16 -out "$pop" -doCounts 1
realSFS "$pop".saf.idx -P 32 -fold 1 > "$pop".sfs
realSFS saf2theta "$pop".saf.idx -outname "$pop" -sfs "$pop".sfs -fold 1
#Estimate for every Chromosome/scaffold
thetaStat do_stat "$pop".thetas.idx
#Do a sliding window analysis based on the output from the make_bed command.
thetaStat do_stat "$pop".thetas.idx -win 50000 -step 50000 -outnames "$pop".thetasWindow.gz



#Fst between KADK and Commercial chicken breeds (RIRL,CWLH,BROC,WHLL) 
realSFS KADAKNATH_9IND.saf.idx RIRL_9.saf.idx -P 32 > kadk_9ind.RIRL_9ind.ml
realSFS fst index KADAKNATH_9IND.saf.idx RIRL_9.saf.idx -sfs kadk_9ind.RIRL_9ind.ml -fstout kadk_9ind.RIRL_9ind

realSFS KADAKNATH_9IND.saf.idx CWLH_6.saf.idx -P 32 > kadk_9ind.CWLH_6ind.ml
realSFS fst index KADAKNATH_9IND.saf.idx CWLH_6.saf.idx -sfs kadk_9ind.CWLH_6ind.ml -fstout kadk_9ind.CWLH_6ind

realSFS KADAKNATH_9IND.saf.idx BROC_7.saf.idx -P 32 > kadk_9ind.BROC_7ind.ml
realSFS fst index KADAKNATH_9IND.saf.idx BROC_7.saf.idx -sfs kadk_9ind.BROC_7ind.ml -fstout kadk_9ind.BROC_7ind

realSFS KADAKNATH_9IND.saf.idx WHLL.saf.idx -P 32 > kadk_9ind.WHLL_3ind.ml
realSFS fst index KADAKNATH_9IND.saf.idx WHLL.saf.idx -sfs kadk_9ind.WHLL_3ind.ml -fstout kadk_9ind.WHLL_3ind


#Fst between CHIN and Commercial chicken breeds (RIRL,CWLH,BROC,WHLL) 
realSFS CHINA_9IND.saf.idx RIRL_9.saf.idx -P 32 > chine_9ind.RIRL_9ind.ml
realSFS fst index CHINA_9IND.saf.idx RIRL_9.saf.idx -sfs chine_9ind.RIRL_9ind.ml -fstout chine_9ind.RIRL_9ind

realSFS CHINA_9IND.saf.idx CWLH_6.saf.idx -P 32 > chine_9ind.CWLH_6ind.ml
realSFS fst index CHINA_9IND.saf.idx CWLH_6.saf.idx -sfs chine_9ind.CWLH_6ind.ml -fstout chine_9ind.CWLH_6ind

realSFS CHINA_9IND.saf.idx BROC_7.saf.idx -P 32 > chine_9ind.BROC_7ind.ml
realSFS fst index CHINA_9IND.saf.idx BROC_7.saf.idx -sfs chine_9ind.BROC_7ind.ml -fstout chine_9ind.BROC_7ind

realSFS CHINA_9IND.saf.idx WHLL.saf.idx -P 32 > chine_9ind.WHLL_3ind.ml
realSFS fst index CHINA_9IND.saf.idx WHLL.saf.idx -sfs chine_9ind.WHLL_3ind.ml -fstout chine_9ind.WHLL_3ind


#generate 50Kb fst output using Angsd between KADK and CHIN
realSFS KADAKNATH_9IND.saf.idx CHINA_9IND.saf.idx -P 32 > kadk_9ind.china_9ind.ml
realSFS fst index KADAKNATH_9IND.saf.idx CHINA_9IND.saf.idx -sfs kadk_9ind.china_9ind.ml -fstout kadk_9ind.china_9ind

#Fst in 50kb window
for i in *fst.idx;do realSFS fst stats2 $i -win 50000 -step 50000 >$i.50kb;done

#make windows
for i in *50kb; do sed 's/(/\t(/3' $i|awk '{print $1,$2"_"$3,$4,$5,$6}' |sed 's/ /\t/g' > $i.column; done

for i in *.column; do sed 's/_/\t/g' $i |sed 's/(//3' |sed 's/)//3' |sed 's/,/\t/3' |awk '{print $2"\t"$3"\t"$4"\t"$7}'|awk '{print $3"\t"$1"\t"$2"\t"$4}' |grep -v "chr" |sort -V |awk '{print $2"\t"$3"\t"$1"\t"$4"\t"$1}' |sed '1s/^/BP\tSNP\tCHR\tP\tchr\n/g'| grep -v -w "W"|grep -v "AA" > $i.txt; done

##extract only autosomes fst
for i in *column.txt ;do grep -v -w "Z" $i >$i.autosome.txt; done

#for CHIN  VS KADK fst for autosomes
for i in *column.txt ;do grep -v -w "Z" $i >$i.AUTOSOME.txt; done


