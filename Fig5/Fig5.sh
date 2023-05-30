#split chr 20  from bamfile
for i in `cat bam.list`;do samtools view -b $i 20 > $i.20.bam;done
for i in `ls *20.bam`;do samtools-1.9/samtools index $i ;done

#make 1Kb window
bedtools makewindows -g Gallus_gallus.GRCg6a.dna_sm.toplevel.fa.fai -w 1000 -s 1000 >window1kb.bed

##extract chr 20 bed
for i in window1kb.bed
do 
grep "^20" $i > $i.bed
done

#calculate the coverage chr 20 
for i in `cat chr_20_bam`;do bedtools coverage -counts -sorted -a window1kb.bed.bed -b $i > $i.1kbcov; done

