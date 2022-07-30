#calculate callable regions 
for i in *bam
do
gatk -T CallableLoci -R Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -I $i -summary $i.table.txt -o $i.callable_status.bed --minMappingQuality 20 --minBaseQuality 20 --minDepth 10 --minDepthForLowMAPQ 20 --maxFractionOfReadsWithLowMAPQ 20
done


#extract callable regions only
for i in *.callable_status.bed
do
grep "CALLABLE" $i| cut -f1,2,3 > $i.1
bedtools coverage -a window50kb.bed -b $i.1 > $i.9; 
done

#make single file of callable region 
cat SRR12103810.XBBC.mk.bam.callable_status.bed.9 SRR12103813.XBBC.mk.bam.callable_status.bed.9 SRR3041115.LCEM.mk.bam.callable_status.bed.9 SRR3041121.LCEM.mk.bam.callable_status.bed.9 SRR3041410.LCMY.mk.bam.callable_status.bed.9 SRR3041411.LCMY.mk.bam.callable_status.bed.9 SRR3041412.LCMY.mk.bam.callable_status.bed.9 SRR4302060_61.OTHE.mk.bam.callable_status.bed.9 > china.calls
cat G1.GOLD.mk.sorted.bam.callable_status.bed.9 G2.GOLD.mk.sorted.bam.callable_status.bed.9 G3.GOLD.mk.sorted.bam.callable_status.bed.9 J1.JETB.mk.sorted.bam.callable_status.bed.9 J2.JETB.mk.sorted.bam.callable_status.bed.9 J3.JETB.mk.sorted.bam.callable_status.bed.9 P1.PENC.mk.sorted.bam.callable_status.bed.9 P2.PENC.mk.sorted.bam.callable_status.bed.9 P3.PENC.mk.sorted.bam.callable_status.bed.9 > kadaknath.calls
cat *.9 > all.calls
rm *.1 *.9

#use all calls file for plot all chr fst plot

#iHS XP-EHH use prefer iHS_XP-EHH folder
#Pi theta tajimas D  prefer figure 3A

