##calculate Dup1_start_baselevel_junction
#dup1-5p 20:10766727-10766827
for i in {10766727..10766827};do echo $i >>1region.bed;done
sed -i 's/^/20\t/g' 1region.bed
awk '{print $1"\t"$2"\t"$2}' 1region.bed >bed1.bed
for i in `cat 101.PCA_bamlist`; do  bam-readcount -f Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -w 0 $i -l bed1.bed > $i.bed1.txt;done
for j in *bed1.txt;do cut -f 1-4,6-9 $j|sed 's/:/\t/g'|cut -f 1-4,5,6,19,20,33,34,47,48 > $j.count;done
for i in *bed1.txt.count;do sed -i "s/^/$i\t/g" $i ; done
for i in {10766727..10766827};do cat *count|awk -v val=$i '$3==val{print $0}' >> $i.dup1_5p_position;done
for i in `ls -1 *.dup1_5p_position`;do sed -i 's/\.mk/\t/' $i;done
cat *.dup1_5p_position > dup1_5p.txt


##calculate Dup1_end_baselevel_junction
#dup1-3p 20:10894100-10894200
for i in {10894100..10894200};do echo $i >>3region.bed;done
sed -i 's/^/20\t/g' 3region.bed
awk '{print $1"\t"$2"\t"$2}' 3region.bed >bed3.bed
for i in `cat 101.PCA_bamlist`; do  bam-readcount -f Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -w 0 $i -l bed3.bed > $i.bed3.txt;done
for j in *bed3.txt;do cut -f 1-4,6-9 $j|sed 's/:/\t/g'|cut -f 1-4,5,6,19,20,33,34,47,48 > $j.count;done
for i in *bed3.txt.count;do sed -i "s/^/$i\t/g" $i ; done
for i in {10894100..10894200};do cat *count|awk -v val=$i '$3==val{print $0}' >> $i.dup1_3p_position;done
for i in `ls -1 *.dup1_3p_position`;do sed -i 's/\.mk/\t/' $i;done
cat *.dup1_3p_position > dup1_3p.txt

##calculate Dup2_start_baselevel_junction
#dup2-5p 20:11306637-11306737
for i in {11306637..11306737};do echo $i >>2region.bed;done
sed -i 's/^/20\t/g' 2region.bed
awk '{print $1"\t"$2"\t"$2}' 2region.bed >bed2.bed
for i in `cat 101.PCA_bamlist`; do  bam-readcount -f Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -w 0 $i -l bed2.bed > $i.bed2.txt;done
for j in *bed2.txt;do cut -f 1-4,6-9 $j|sed 's/:/\t/g'|cut -f 1-4,5,6,19,20,33,34,47,48 > $j.count;done
for i in *bed2.txt.count;do sed -i "s/^/$i\t/g" $i ; done
for i in {11306637..11306737};do cat *count|awk -v val=$i '$3==val{print $0}' >> $i.dup2_5p_position;done
for i in `ls -1 *.dup2_5p_position`;do sed -i 's/\.mk/\t/' $i;done
cat *.dup2_5p_position > dup2_5p.txt

##calculate Dup2_end_baselevel_junction
#dup2-3p 20:11477385-11477551
for i in {11477385..11477551};do echo $i >>4region.bed;done
sed -i 's/^/20\t/g' 4region.bed
awk '{print $1"\t"$2"\t"$2}' 4region.bed >bed4.bed
for i in `cat 101.PCA_bamlist`; do  bam-readcount -f Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -w 0 $i -l bed4.bed > $i.bed4.txt;done
for j in *bed4.txt;do cut -f 1-4,6-9 $j|sed 's/:/\t/g'|cut -f 1-4,5,6,19,20,33,34,47,48 > $j.count;done
for i in *bed4.txt.count;do sed -i "s/^/$i\t/g" $i ; done
for i in {11477385..11477551};do cat *count|awk -v val=$i '$3==val{print $0}' >> $i.dup2_3p_position;done
for i in `ls -1 *dup2_3p_position`;do sed -i 's/\.mk/\t/' $i;done
cat *.dup2_3p_position > dup2_3p.txt



###rename file names
#rename 's/SRR1217554.OTHE/SRR1217554.RLCC/g' *
#rename 's/SRR1649233.OTHE/SRR1649233.DBLC/g' *
#rename 's/SRR1649234.OTHE/SRR1649234.SBFC/g' *
#rename 's/SRR1649235.OTHE/SRR1649235.WCBP/g' *
#rename 's/SRR3954707.OTHE/SRR3954707.RJFC/g' *
#rename 's/SRR4292973_61.OTHE/SRR4292973_61.DGLC/g' *
#rename 's/SRR4302060_61.OTHE/SRR4302060_61.LCEM/g' *
#rename 's/YeonsanOgye1.OTHE/YeonsanOgye.YOSK/g' *

#rename inside file names
#for i in *;do sed -i 's/SRR1217554.OTHE/SRR1217554.RLCC/g' $i;done
#for i in *;do sed -i 's/SRR1649233.OTHE/SRR1649233.DBLC/g' $i;done
#for i in *;do sed -i 's/SRR1649234.OTHE/SRR1649234.SBFC/g' $i;done
#for i in *;do sed -i 's/SRR1649235.OTHE/SRR1649235.WCBP/g' $i;done
#for i in *;do sed -i 's/SRR3954707.OTHE/SRR3954707.RJFC/g' $i;done
#for i in *;do sed -i 's/SRR4292973_61.OTHE/SRR4292973_61.DGLC/g' $i;done
#for i in *;do sed -i 's/SRR4302060_61.OTHE/SRR4302060_61.LCEM/g' $i;done
#for i in *;do sed -i 's/YeonsanOgye1.OTHE/YeonsanOgye.YOSK/g' $i;done


Rscript Normalized_readcount_position.R


