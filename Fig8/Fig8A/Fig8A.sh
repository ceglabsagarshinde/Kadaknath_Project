#calculate within pop SFS stat and 

pop="KADAKNATH_9IND"
angsd -GL 2 -ref Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -anc Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -dosaf 1 -baq 1 -C 50 -setMinDepthInd 6 -minInd 9 -minMapQ 30 -minQ 20 -b KADAKNATH_9IND.list -nThreads 16 -out "$pop" -doCounts 1
realSFS "$pop".saf.idx -P 32 -fold 1 > "$pop".sfs
realSFS saf2theta "$pop".saf.idx -outname "$pop" -sfs "$pop".sfs -fold 1
#Estimate for every Chromosome/scaffold
thetaStat do_stat "$pop".thetas.idx
#Do a sliding window analysis based on the output from the make_bed command.
thetaStat do_stat "$pop".thetas.idx -win 50000 -step 50000 -outnames "$pop".thetasWindow.gz
thetaStat do_stat "$pop".thetas.idx -win 10000 -step 10000 -outnames "$pop".10kbthetasWindow.gz


pop="CHINA_9IND"
angsd -GL 2 -ref Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -anc Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -dosaf 1 -baq 1 -C 50 -setMinDepthInd 6 -minInd 9 -minMapQ 30 -minQ 20 -b china_9indi.list -nThreads 16 -out "$pop" -doCounts 1
realSFS "$pop".saf.idx -P 24 -fold 1 > "$pop".sfs
realSFS saf2theta "$pop".saf.idx -outname "$pop" -sfs "$pop".sfs -fold 1
#Estimate for every Chromosome/scaffold
thetaStat do_stat "$pop".thetas.idx
#Do a sliding window analysis based on the output from the make_bed command.
thetaStat do_stat "$pop".thetas.idx -win 50000 -step 50000 -outnames "$pop".thetasWindow.gz
thetaStat do_stat "$pop".thetas.idx -win 10000 -step 10000 -outnames "$pop".10kbthetasWindow.gz




#generate 50 kb and 10Kb fst output using Angsd

realSFS KADAKNATH_9IND.saf.idx CHINA_9IND.saf.idx -P 32 > kadk_9ind.china_9ind.ml
realSFS fst index KADAKNATH_9IND.saf.idx CHINA_9IND.saf.idx -sfs kadk_9ind.china_9ind.ml -fstout kadk_9ind.china_9ind
realSFS fst stats2 kadk_9ind.china_9ind.fst.idx -win 1 -step 1 >kadk_9ind.china_9ind.1bp
realSFS fst stats2 kadk_9ind.china_9ind.fst.idx -win 50000 -step 50000 >kadk_9ind.china_9ind.50kb
realSFS fst stats2 kadk_9ind.china_9ind.fst.idx -win 10000 -step 10000 >kadk_9ind.china_9ind.10kb


#make bed file  with 0.9 > value
#awk '$5>0.9 {print $2"\t"$3"\t"$3"\t"$5}' kadk_9ind.china_9ind.1bp |grep -v "nan" >kadk_9ind.china_9ind.1bp.bed

#intersec with missense bed list
bedtools intersect -a kadk_9ind.china_9ind.1bp.bed -b missense_varient_101_freebayes.bed >missense.bed

cut -f1,2,3 missense.bed  >missense.list.bed


for i in *50kb; do sed 's/(/\t(/3' $i|awk '{print $1,$2"_"$3,$4,$5,$6}' |sed 's/ /\t/g' |cut -f2  > $i.txt; done
for i in *50kb; do sed 's/(/\t(/3' $i|awk '{print $1,$2"_"$3,$4,$5,$6}' |sed 's/ /\t/g' > $i.column; done


#for FST
# for extracting selected columns
for i in *column; do sed 's/_/\t/g' $i |sed 's/(//3' |sed 's/)//3' |sed 's/,/\t/3' |awk '{print $2"\t"$3"\t"$4"\t"$7}'|awk '{print $3"\t"$1"\t"$2"\t"$4}' |grep -v "chr" |sort -V |awk '{print $2"\t"$3"\t"$1"\t"$4"\t"$1}' |sed '1s/^/BP\tSNP\tCHR\tP\tchr\n/g'| grep -v -w "W"|grep -v "AA" > $i.txt; done


##add numbers in 5th column chromosome wise 
for i in `cut -f3 *.column.txt|sort |uniq -c|grep -v "CHR" |cat -n |awk '{print $1+1"_"$3}' |sed '1,32d'`
do
j=`echo $i|sed 's/_.*//g'`
k=`echo $i|sed  's/.._//g'`
for m in *.txt
do
sed -i "s/$k/$j/ 2" $m
done
done

#outlier
#make autosome
grep -v -w "Z"  kadk_9ind.china_9ind.50kb.column.txt |wc -l
19099

19099×0.99=18908.01 (# for 99th percentile)
19099−18908=191(#for the 99 percentile data)

grep -v -w "Z" kadk_9ind.china_9ind.50kb.column.txt |sort -k4n |tail -n191 |head -n1
0.363558

#outlier
#zchr
grep -w "Z"  kadk_9ind.china_9ind.50kb.column.txt |wc -l 
1638
1638×0.99=1621.62 (# for 99th percentile)
1638−1621=17(#for the 99 percentile data)

grep -w "Z" kadk_9ind.china_9ind.50kb.column.txt |sort -k4n |tail -n17 |head -n1
0.784523

#make outlier bed file
grep -v -w "Z" kadk_9ind.china_9ind.50kb.column.txt |sort -k4n |tail -n191 |awk '{print $3"\t"$1"\t"$2}' |sort -V >autosome.outlier
grep -w "Z" kadk_9ind.china_9ind.50kb.column.txt |sort -k4n |tail -n17 |awk '{print $3"\t"$1"\t"$2}' |sort -V >Z.outlier
cat autosome.outlier Z.outlier >final.outlier.bed


#intersect 
bedtools intersect -b final.outlier.bed -a missense_varient_101_freebayes.bed |cut -f1,2,3 >mis.bed




