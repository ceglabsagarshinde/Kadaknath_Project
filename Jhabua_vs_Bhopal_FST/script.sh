#within pop stat

pop="bhopal2"
angsd -GL 2 -ref Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -anc Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -dosaf 1 -baq 1 -C 50 -setMinDepthInd 6 -minInd 3 -minMapQ 30 -minQ 20 -b bhopal2.list -nThreads 16 -out "$pop" -doCounts 1
realSFS "$pop".saf.idx -fold 1 > "$pop".sfs
realSFS saf2theta "$pop".saf.idx -outname "$pop" -sfs "$pop".sfs -fold 1

#Estimate for every Chromosome/scaffold
thetaStat do_stat "$pop".thetas.idx
#Do a sliding window analysis based on the output from the make_bed command.
thetaStat do_stat "$pop".thetas.idx -win 50000 -step 50000 -outnames "$pop".thetasWindow.gz



pop="bhopal1"
angsd -GL 2 -ref Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -anc Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -dosaf 1 -baq 1 -C 50 -setMinDepthInd 6 -minInd 3 -minMapQ 30 -minQ 20 -b bhopal1.list -nThreads 16 -out "$pop" -doCounts 1
realSFS "$pop".saf.idx -fold 1 > "$pop".sfs
realSFS saf2theta "$pop".saf.idx -outname "$pop" -sfs "$pop".sfs -fold 1
#Estimate for every Chromosome/scaffold
thetaStat do_stat "$pop".thetas.idx
#Do a sliding window analysis based on the output from the make_bed command.
thetaStat do_stat "$pop".thetas.idx -win 50000 -step 50000 -outnames "$pop".thetasWindow.gz


pop="JHABUA"
angsd -GL 2 -ref Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -anc Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -dosaf 1 -baq 1 -C 50 -setMinDepthInd 6 -minInd 3 -minMapQ 30 -minQ 20 -b jhabua.list -nThreads 16 -out "$pop" -doCounts 1
realSFS "$pop".saf.idx -fold 1 > "$pop".sfs
realSFS saf2theta "$pop".saf.idx -outname "$pop" -sfs "$pop".sfs -fold 1
#Estimate for every Chromosome/scaffold
thetaStat do_stat "$pop".thetas.idx
#Do a sliding window analysis based on the output from the make_bed command.
thetaStat do_stat "$pop".thetas.idx -win 50000 -step 50000 -outnames "$pop".thetasWindow.gz






#generate Fst file using both pop 
realSFS bhopal1.saf.idx bhopal2.saf.idx -P 32 >bhopal1.bhopal2.ml
realSFS fst index bhopal1.saf.idx bhopal2.saf.idx -sfs bhopal1.bhopal2.ml -fstout bhopal1.bhopal2

realSFS bhopal1.saf.idx JHABUA.saf.idx -P 32 >bhopal1.jhabua.ml
realSFS fst index bhopal1.saf.idx JHABUA.saf.idx -sfs bhopal1.jhabua.ml -fstout bhopal1.jhabua

realSFS bhopal2.saf.idx JHABUA.saf.idx -P 32 >bhopal2.jhabua.ml
realSFS fst index bhopal2.saf.idx JHABUA.saf.idx -sfs bhopal2.jhabua.ml -fstout bhopal2.jhabua

for i in *fst.idx
do 
realSFS fst stats2 $i -win 1 -step 1 >$i.1bp
realSFS fst stats2 $i -win 50000 -step 50000 >$i.50kb
done


##extract coloum 

for i in *50kb; do sed 's/(/\t(/3' $i|awk '{print $1,$2"_"$3,$4,$5,$6}' |sed 's/ /\t/g' |cut -f2  > $i.txt; done
cat bhopal1.bhopal2.fst.idx.50kb.txt bhopal1.jhabua.fst.idx.50kb.txt bhopal2.jhabua.fst.idx.50kb.txt  |sort |uniq -c |sed -n -e 's/^ *3 \(.*\)/\1/p' >common.list
for i in *50kb; do sed 's/(/\t(/3' $i|awk '{print $1,$2"_"$3,$4,$5,$6}' |sed 's/ /\t/g' > $i.column; done


##common window extraction


for i in `cat common.list`
do
for j in `ls *.column` 
do
grep -w "$i" $j  >> "$j"_common.window
done
done

# for extracting selected columns
for i in *common.window; do sed 's/_/\t/g' $i |sed 's/(//3' |sed 's/)//3' |sed 's/,/\t/3' |awk '{print $2"\t"$3"\t"$4"\t"$7}'|awk '{print $3"\t"$1"\t"$2"\t"$4}' |grep -v "chr" |sort -V |grep -v "AA"|awk '{print $2"\t"$3"\t"$1"\t"$4"\t"$1}' |sed '1s/^/BP\tSNP\tCHR\tP\tchr\n/g' > $i.txt; done

##add numbers in 5th column chromosome wise
for i in `cut -f3 *.window.txt|sort |uniq -c|grep -v "CHR" |cat -n |awk '{print $1+1"_"$3}' |sed '1,32d'`
do
j=`echo $i|sed 's/_.*//g'`
k=`echo $i|sed  's/.._//g'`
for m in *.txt
do
sed -i "s/$k/$j/ 2" $m
done
done






