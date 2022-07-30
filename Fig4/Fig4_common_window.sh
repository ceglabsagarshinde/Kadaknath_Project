#within pop stat

pop="pencill"
angsd -GL 2 -ref Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -anc Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -dosaf 1 -baq 1 -C 50 -setMinDepthInd 6 -minInd 3 -minMapQ 30 -minQ 20 -b pencil.bamlist -nThreads 16 -out "$pop" -doCounts 1
realSFS "$pop".saf.idx -P 24 -fold 1 > "$pop".sfs
realSFS saf2theta "$pop".saf.idx -outname "$pop" -sfs "$pop".sfs -fold 1
#Do a sliding window analysis based on the output from the make_bed command.
thetaStat do_stat "$pop".thetas.idx -win 10000 -step 10000 -outnames "$pop".10kb.thetasWindow.gz


pop="Golden"
angsd -GL 2 -ref Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -anc Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -dosaf 1 -baq 1 -C 50 -setMinDepthInd 6 -minInd 3 -minMapQ 30 -minQ 20 -b golden.bamlist -nThreads 16 -out "$pop" -doCounts 1
realSFS "$pop".saf.idx -P 24 -fold 1 > "$pop".sfs
realSFS saf2theta "$pop".saf.idx -outname "$pop" -sfs "$pop".sfs -fold 1
#Estimate for every Chromosome/scaffold
thetaStat do_stat "$pop".thetas.idx
#Do a sliding window analysis based on the output from the make_bed command.
thetaStat do_stat "$pop".thetas.idx -win 50000 -step 50000 -outnames "$pop".10kb.thetasWindow.gz


pop="jetblack"
angsd -GL 2 -ref Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -anc Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -dosaf 1 -baq 1 -C 50 -setMinDepthInd 6 -minInd 3 -minMapQ 30 -minQ 20 -b jet.bamlist -nThreads 16 -out "$pop" -doCounts 1
realSFS "$pop".saf.idx -P 24 -fold 1 > "$pop".sfs
realSFS saf2theta "$pop".saf.idx -outname "$pop" -sfs "$pop".sfs -fold 1
#Estimate for every Chromosome/scaffold
thetaStat do_stat "$pop".thetas.idx
#Do a sliding window analysis based on the output from the make_bed command.
thetaStat do_stat "$pop".thetas.idx -win 50000 -step 50000 -outnames "$pop".10kbthetasWindow.gz


#FST

realSFS pencill.saf.idx jetblack.saf.idx -P 24 >pencill.jetblack.ml
realSFS fst index pencill.saf.idx jetblack.saf.idx -sfs pencill.jetblack.ml -fstout pencill.jetblack
realSFS Golden.saf.idx jetblack.saf.idx -P 24 >golden.jetblack.ml
realSFS fst index Golden.saf.idx jetblack.saf.idx -sfs golden.jetblack.ml -fstout golden.jetblack
realSFS Golden.saf.idx pencill.saf.idx -P 24 >golden.pencil.ml
realSFS fst index Golden.saf.idx pencill.saf.idx -sfs golden.pencil.ml -fstout golden.pencil

#generate 1bp and 50kb bed file
for i in *fst.idx
do 
realSFS fst stats2 pencill.jetblack.fst.idx -win 1 -step 1 >$i.1bp
realSFS fst stats2 pencill.jetblack.fst.idx -win 50000 -step 50000 >$i.50kb
done



#make bedfile 1bp fst
for i in `ls *.1bp`; do awk '{print $2"\t"$3"\t"$3"\t"$5}' $i > $i.bed;done

#extract fst >0.99 
for i in *.1bp
do
awk '$5>0.99{print $0}' $i |grep -v "nan" >$i.0.99
done











######################################################################################################################################

##common window extraction
for i in *50kb; do sed 's/(/\t(/3' $i|awk '{print $1,$2"_"$3,$4,$5,$6}' |sed 's/ /\t/g' > $i.column; done


for i in `cat common.list`
do
for j in `ls *.column` 
do
grep -w "$i" $j  >> "$j"_common.window
done
done

######################################################################################################################################
##percentile outlier  

21112×0.99=20900.88 (# for 99th percentile)
21112−20900=212(#for the 99 percentile data)
for i in *common.window;do sort -k5,5n $i|tail -n212 |sed 's/(//3' |sed 's/)/\t/3' |sed 's/_//g' |sed 's/,/\t/3' |awk '{print $4"\t"$2"\t"$3}' |sort -V >> $i.1perntile_outlier ;done

####################################################################################################################################

###bedtools merge for adjucent window

for i in `ls *.1perntile_outlier`
do 
j=`echo $i |cut -f1 -d "_"`
bedtools merge -i $i -d 10 -c 3 -o collapse  |grep ","  |awk '{print $1"\t"$2"\t"$3}' > $j.merged.bed
done

################################################################################################################################


#for FST
# for extracting selected columns
for i in *common.window; do sed 's/_/\t/g' $i |sed 's/(//3' |sed 's/)//3' |sed 's/,/\t/3' |awk '{print $2"\t"$3"\t"$4"\t"$7}'|awk '{print $3"\t"$1"\t"$2"\t"$4}' |grep -v "chr" |sort -V |awk '{print $2"\t"$3"\t"$1"\t"$4"\t"$1}' |sed '1s/^/BP\tSNP\tCHR\tP\tchr\n/g' > $i.txt; done


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

################################################################################################################################
#varient effect using snpEff
java -Xmx8g -jar ~/snpEff/snpEff.jar GRCg6a.96 freebayes_var.vcf >freebayes_var.vcf.ann.vcf

java -Xmx8g -jar ~/snpEff/snpEff.jar GRCg6a.96 bcf_kadaknath_all.vcf >bcf_kadaknath_all.vcf.ann.vcf




#CHEAK MISSENSE VARIENT
bedtools intersect -a freebayes_var.vcf.ann.vcf -b final_Pencill_jetblack_fixed_site   |grep "miss"
bedtools intersect -a kadaknath_gatk_final.snp.vcf.ann.vcf -b final_Pencill_jetblack_fixed_site   |grep "miss"
bedtools intersect -a bcf_kadaknath_all.vcf.ann.vcf -b final_Pencill_jetblack_fixed_site   |grep "miss"

bedtools intersect -a kadaknath_gatk_final.snp.vcf.ann.vcf -b final_Golden_pencill_fixed_site   |grep "miss"
bedtools intersect -a freebayes_var.vcf.ann.vcf -b final_Golden_pencill_fixed_site   |grep "miss"
bedtools intersect -a bcf_kadaknath_all.vcf.ann.vcf -b final_Golden_pencill_fixed_site   |grep "miss"

bedtools intersect -a bcf_kadaknath_all.vcf.ann.vcf -b final_Golden_jetblack_fixed_site   |grep "miss"
bedtools intersect -a kadaknath_gatk_final.snp.vcf.ann.vcf -b final_Golden_jetblack_fixed_site   |grep "miss"
bedtools intersect -a freebayes_var.vcf.ann.vcf -b final_Golden_jetblack_fixed_site   |grep "miss"




