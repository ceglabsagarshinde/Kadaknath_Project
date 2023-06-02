#make bed file 10kb window for ihs
bedtools makewindows -g Gallus_gallus.GRCg6a.dna_sm.toplevel.fa.fai -w 10000 -s 10000 >window10kb.bed 
#extract chromosome 20
grep "^20" window10kb.bed >20chr_10kb.bed

#make bed file od ihs output
sed 's/ /\t/g' KADK_ihs_bcf.txt |awk '{print $2"\t"$3"\t"$3"\t"$4}' |grep -v "ihs.POSITION"  |sed 's/"//g' |grep -v "NA" >KADK_ihs_bcf.bed

sed 's/ /\t/g' CHIN_ihs_bcf.txt |awk '{print $2"\t"$3"\t"$3"\t"$4}' |grep -v "ihs.POSITION"  |sed 's/"//g' |grep -v "NA" >CHIN_ihs_bcf.bed

#make 10Kb ihs for both CHIN AND KADK pop
bedtools map -a 20chr_10kb.bed -b KADK_ihs_bcf.bed -c 4 -o mean >KADK_ihs_bcf.bed.txt
bedtools map -a 20chr_10kb.bed -b CHIN_ihs_bcf.bed -c 4 -o mean >CHIN_ihs_bcf.bed.txt

#Fst , theta, Pi are also considered in 10Kb window

