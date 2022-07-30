
##Run abba baba using black-bone chicken KADK, CHIN ,and commercial breeds(BROC,WHLL,CWLH,RIRL) 
angsd -out abbababa_kadaknath_9_chinese_9_commercial.output -doAbbababa 1 -bam kadk_china_commercial.list -doCounts 1 -blockSize 500000 -anc Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -nThreads 32 -minMapQ 30 -minQ 20
#make list
sed 's/\/media\/sagar\/disk3\/forbwa\/gatktotal\/finalallindi\/20x_coverage\///g' kadk_china_commercial.list >kadk_china_comm.list

#calculate jackKnife score
Rscript jackKnife.R file=abbababa_kadaknath_9_chinese_9_commercial.output.abbababa indNames=kadk_china_comm.list outfile=ABBA_BABA_9chinese_broc_whll_RIRL.txt

#CONVERT FILE FORMAT
sed 's/.mk.sorted.bam//g' ABBA_BABA_9chinese_broc_whll_RIRL.txt.txt |sed 's/.mk.bam//g' |sed 's/\./\t/1' |sed 's/\./\t/1'  |sed 's/\./\t/1'  |cut -f2,4,6-15 |sed 's/XBBC/CHIN/g' |sed 's/OTHE/CHIN/g' |sed 's/LCMY/CHIN/g'| sed 's/LCEM/CHIN/g' |sed 's/JETB/KADK/g' |sed 's/PENC/KADK/g' |sed 's/GOLD/KADK/g' |awk -F '\t' '{if($1!=$2 && $2!=$3 && $3!=$1)print $0}'  |sed 's/\t/_/1' |sed 's/\t/_/1'  |grep -v "WHLL_BROC_RIRL" |grep -v "CWLH_BROC_RIRL" |grep -v "CHIN_BROC_RIRL" |grep -v "KADK_BROC_RIRL" |grep -v "WHLL_CWLH_RIRL" |grep -v "CHIN_CWLH_RIRL" |grep -v "KADK_CWLH_RIRL" |grep -v "CHIN_WHLL_RIRL" |grep -v "KADK_WHLL_RIRL" |grep -v "CWLH_RIRL_BROC" |grep -v "WHLL_CWLH_KADK" |grep -v "WHLL_BROC_KADK" |grep -v "CWLH_BROC_KADK" |grep -v "BROC_RIRL_CHIN" |grep -v "BROC_RIRL_CWLH" |grep -v "BROC_RIRL_KADK" |grep -v "BROC_RIRL_WHLL" |grep -v "CHIN_BROC_CWLH" |grep -v "CHIN_BROC_WHLL" |grep -v "CHIN_CWLH_BROC" |grep -v "CHIN_CWLH_WHLL" |grep -v "CHIN_RIRL_BROC" |grep -v "CHIN_RIRL_CWLH" |grep -v "WHLL_BROC_CHIN" |grep -v "WHLL_BROC_CWLH" |grep -v "WHLL_BROC_KADK" |grep -v "WHLL_CWLH_BROC" |grep -v "WHLL_CWLH_CHIN" |grep -v "WHLL_RIRL_BROC" |grep -v "WHLL_RIRL_CHIN" |grep -v "WHLL_RIRL_CWLH" |grep -v "WHLL_RIRL_KADK" |grep -v "CHIN_RIRL_WHLL" |grep -v "CHIN_WHLL_BROC" |grep -v "KADK_BROC_CWLH" |grep -v "CWLH_BROC_CHIN" |grep -v "CWLH_BROC_KADK" |grep -v "CWLH_BROC_WHLL" |grep -v "CWLH_RIRL_CHIN" |grep -v "CWLH_RIRL_KADK" |grep -v "CHIN_WHLL_CWLH" |grep -v "CWLH_RIRL_WHLL" |grep -v "KADK_BROC_WHLL" |grep -v "KADK_CWLH_BROC" |grep -v "KADK_CWLH_WHLL" |grep -v "KADK_RIRL_BROC" |grep -v "KADK_RIRL_CWLH" |grep -v "KADK_RIRL_WHLL" |grep -v "KADK_WHLL_BROC" |grep -v "KADK_WHLL_CWLH" |sed 's/KADK/H1/g' |sed 's/CHIN/H2/g' |sed 's/BROC/H3/g' |grep "H3" >KADK_CHIN_BROC.txt


sed 's/.mk.sorted.bam//g' ABBA_BABA_9chinese_broc_whll_RIRL.txt.txt |sed 's/.mk.bam//g' |sed 's/\./\t/1' |sed 's/\./\t/1'  |sed 's/\./\t/1'  |cut -f2,4,6-15 |sed 's/XBBC/CHIN/g' |sed 's/OTHE/CHIN/g' |sed 's/LCMY/CHIN/g'| sed 's/LCEM/CHIN/g' |sed 's/JETB/KADK/g' |sed 's/PENC/KADK/g' |sed 's/GOLD/KADK/g' |awk -F '\t' '{if($1!=$2 && $2!=$3 && $3!=$1)print $0}'  |sed 's/\t/_/1' |sed 's/\t/_/1'  |grep -v "WHLL_BROC_RIRL" |grep -v "CWLH_BROC_RIRL" |grep -v "CHIN_BROC_RIRL" |grep -v "KADK_BROC_RIRL" |grep -v "WHLL_CWLH_RIRL" |grep -v "CHIN_CWLH_RIRL" |grep -v "KADK_CWLH_RIRL" |grep -v "CHIN_WHLL_RIRL" |grep -v "KADK_WHLL_RIRL" |grep -v "CWLH_RIRL_BROC" |grep -v "WHLL_CWLH_KADK" |grep -v "WHLL_BROC_KADK" |grep -v "CWLH_BROC_KADK" |grep -v "BROC_RIRL_CHIN" |grep -v "BROC_RIRL_CWLH" |grep -v "BROC_RIRL_KADK" |grep -v "BROC_RIRL_WHLL" |grep -v "CHIN_BROC_CWLH" |grep -v "CHIN_BROC_WHLL" |grep -v "CHIN_CWLH_BROC" |grep -v "CHIN_CWLH_WHLL" |grep -v "CHIN_RIRL_BROC" |grep -v "CHIN_RIRL_CWLH" |grep -v "WHLL_BROC_CHIN" |grep -v "WHLL_BROC_CWLH" |grep -v "WHLL_BROC_KADK" |grep -v "WHLL_CWLH_BROC" |grep -v "WHLL_CWLH_CHIN" |grep -v "WHLL_RIRL_BROC" |grep -v "WHLL_RIRL_CHIN" |grep -v "WHLL_RIRL_CWLH" |grep -v "WHLL_RIRL_KADK" |grep -v "CHIN_RIRL_WHLL" |grep -v "CHIN_WHLL_BROC" |grep -v "KADK_BROC_CWLH" |grep -v "CWLH_BROC_CHIN" |grep -v "CWLH_BROC_KADK" |grep -v "CWLH_BROC_WHLL" |grep -v "CWLH_RIRL_CHIN" |grep -v "CWLH_RIRL_KADK" |grep -v "CHIN_WHLL_CWLH" |grep -v "CWLH_RIRL_WHLL" |grep -v "KADK_BROC_WHLL" |grep -v "KADK_CWLH_BROC" |grep -v "KADK_CWLH_WHLL" |grep -v "KADK_RIRL_BROC" |grep -v "KADK_RIRL_CWLH" |grep -v "KADK_RIRL_WHLL" |grep -v "KADK_WHLL_BROC" |grep -v "KADK_WHLL_CWLH" |sed 's/KADK/H1/g' |sed 's/CHIN/H2/g' |sed 's/RIRL/H3/g' |grep "H3" >KADK_CHIN_RIRL.txt


sed 's/.mk.sorted.bam//g' ABBA_BABA_9chinese_broc_whll_RIRL.txt.txt |sed 's/.mk.bam//g' |sed 's/\./\t/1' |sed 's/\./\t/1'  |sed 's/\./\t/1'  |cut -f2,4,6-15 |sed 's/XBBC/CHIN/g' |sed 's/OTHE/CHIN/g' |sed 's/LCMY/CHIN/g'| sed 's/LCEM/CHIN/g' |sed 's/JETB/KADK/g' |sed 's/PENC/KADK/g' |sed 's/GOLD/KADK/g' |awk -F '\t' '{if($1!=$2 && $2!=$3 && $3!=$1)print $0}'  |sed 's/\t/_/1' |sed 's/\t/_/1'  |grep -v "WHLL_BROC_RIRL" |grep -v "CWLH_BROC_RIRL" |grep -v "CHIN_BROC_RIRL" |grep -v "KADK_BROC_RIRL" |grep -v "WHLL_CWLH_RIRL" |grep -v "CHIN_CWLH_RIRL" |grep -v "KADK_CWLH_RIRL" |grep -v "CHIN_WHLL_RIRL" |grep -v "KADK_WHLL_RIRL" |grep -v "CWLH_RIRL_BROC" |grep -v "WHLL_CWLH_KADK" |grep -v "WHLL_BROC_KADK" |grep -v "CWLH_BROC_KADK" |grep -v "BROC_RIRL_CHIN" |grep -v "BROC_RIRL_CWLH" |grep -v "BROC_RIRL_KADK" |grep -v "BROC_RIRL_WHLL" |grep -v "CHIN_BROC_CWLH" |grep -v "CHIN_BROC_WHLL" |grep -v "CHIN_CWLH_BROC" |grep -v "CHIN_CWLH_WHLL" |grep -v "CHIN_RIRL_BROC" |grep -v "CHIN_RIRL_CWLH" |grep -v "WHLL_BROC_CHIN" |grep -v "WHLL_BROC_CWLH" |grep -v "WHLL_BROC_KADK" |grep -v "WHLL_CWLH_BROC" |grep -v "WHLL_CWLH_CHIN" |grep -v "WHLL_RIRL_BROC" |grep -v "WHLL_RIRL_CHIN" |grep -v "WHLL_RIRL_CWLH" |grep -v "WHLL_RIRL_KADK" |grep -v "CHIN_RIRL_WHLL" |grep -v "CHIN_WHLL_BROC" |grep -v "KADK_BROC_CWLH" |grep -v "CWLH_BROC_CHIN" |grep -v "CWLH_BROC_KADK" |grep -v "CWLH_BROC_WHLL" |grep -v "CWLH_RIRL_CHIN" |grep -v "CWLH_RIRL_KADK" |grep -v "CHIN_WHLL_CWLH" |grep -v "CWLH_RIRL_WHLL" |grep -v "KADK_BROC_WHLL" |grep -v "KADK_CWLH_BROC" |grep -v "KADK_CWLH_WHLL" |grep -v "KADK_RIRL_BROC" |grep -v "KADK_RIRL_CWLH" |grep -v "KADK_RIRL_WHLL" |grep -v "KADK_WHLL_BROC" |grep -v "KADK_WHLL_CWLH" |sed 's/KADK/H1/g' |sed 's/CHIN/H2/g' |sed 's/WHLL/H3/g' |grep "H3" >KADK_CHIN_WHLL.txt


sed 's/.mk.sorted.bam//g' ABBA_BABA_9chinese_broc_whll_RIRL.txt.txt |sed 's/.mk.bam//g' |sed 's/\./\t/1' |sed 's/\./\t/1'  |sed 's/\./\t/1'  |cut -f2,4,6-15 |sed 's/XBBC/CHIN/g' |sed 's/OTHE/CHIN/g' |sed 's/LCMY/CHIN/g'| sed 's/LCEM/CHIN/g' |sed 's/JETB/KADK/g' |sed 's/PENC/KADK/g' |sed 's/GOLD/KADK/g' |awk -F '\t' '{if($1!=$2 && $2!=$3 && $3!=$1)print $0}'  |sed 's/\t/_/1' |sed 's/\t/_/1'  |grep -v "WHLL_BROC_RIRL" |grep -v "CWLH_BROC_RIRL" |grep -v "CHIN_BROC_RIRL" |grep -v "KADK_BROC_RIRL" |grep -v "WHLL_CWLH_RIRL" |grep -v "CHIN_CWLH_RIRL" |grep -v "KADK_CWLH_RIRL" |grep -v "CHIN_WHLL_RIRL" |grep -v "KADK_WHLL_RIRL" |grep -v "CWLH_RIRL_BROC" |grep -v "WHLL_CWLH_KADK" |grep -v "WHLL_BROC_KADK" |grep -v "CWLH_BROC_KADK" |grep -v "BROC_RIRL_CHIN" |grep -v "BROC_RIRL_CWLH" |grep -v "BROC_RIRL_KADK" |grep -v "BROC_RIRL_WHLL" |grep -v "CHIN_BROC_CWLH" |grep -v "CHIN_BROC_WHLL" |grep -v "CHIN_CWLH_BROC" |grep -v "CHIN_CWLH_WHLL" |grep -v "CHIN_RIRL_BROC" |grep -v "CHIN_RIRL_CWLH" |grep -v "WHLL_BROC_CHIN" |grep -v "WHLL_BROC_CWLH" |grep -v "WHLL_BROC_KADK" |grep -v "WHLL_CWLH_BROC" |grep -v "WHLL_CWLH_CHIN" |grep -v "WHLL_RIRL_BROC" |grep -v "WHLL_RIRL_CHIN" |grep -v "WHLL_RIRL_CWLH" |grep -v "WHLL_RIRL_KADK" |grep -v "CHIN_RIRL_WHLL" |grep -v "CHIN_WHLL_BROC" |grep -v "KADK_BROC_CWLH" |grep -v "CWLH_BROC_CHIN" |grep -v "CWLH_BROC_KADK" |grep -v "CWLH_BROC_WHLL" |grep -v "CWLH_RIRL_CHIN" |grep -v "CWLH_RIRL_KADK" |grep -v "CHIN_WHLL_CWLH" |grep -v "CWLH_RIRL_WHLL" |grep -v "KADK_BROC_WHLL" |grep -v "KADK_CWLH_BROC" |grep -v "KADK_CWLH_WHLL" |grep -v "KADK_RIRL_BROC" |grep -v "KADK_RIRL_CWLH" |grep -v "KADK_RIRL_WHLL" |grep -v "KADK_WHLL_BROC" |grep -v "KADK_WHLL_CWLH" |sed 's/KADK/H1/g' |sed 's/CHIN/H2/g' |sed 's/CWLH/H3/g' |grep "H3" >KADK_CHIN_CWLH.txt



#convert KADK_CHIN_COMM file
grep "H1_H2" KADK_CHIN_CWLH.txt  |sed 's/H1_H2_H3/CWLH/g' >H1_KADK_H2_CHIN_CWLH
grep "H1_H2" KADK_CHIN_RIRL.txt  |sed 's/H1_H2_H3/RIRL/g' >H1_KADK_H2_CHIN_RIRL
grep "H1_H2" KADK_CHIN_WHLL.txt  |sed 's/H1_H2_H3/WHLL/g' >H1_KADK_H2_CHIN_WHLL
grep "H1_H2" KADK_CHIN_BROC.txt  |sed 's/H1_H2_H3/BROC/g' >H1_KADK_H2_CHIN_BROC
cat H1_KADK_H2_CHIN_BROC H1_KADK_H2_CHIN_CWLH H1_KADK_H2_CHIN_WHLL H1_KADK_H2_CHIN_RIRL > H1_KADK_H2_CHIN_H3_BROC_CWLH_WHLL_RIRL


#convert KADK_COMM_CHIN file
grep "H1_H3_H2" KADK_CHIN_BROC.txt |sed 's/H1_H3_H2/BROC/g' >H1_KADK_H2_BROC_H3_CHIN
grep "H1_H3_H2" KADK_CHIN_RIRL.txt |sed 's/H1_H3_H2/RIRL/g' >H1_KADK_H2_RIRL_H3_CHIN
grep "H1_H3_H2" KADK_CHIN_WHLL.txt |sed 's/H1_H3_H2/WHLL/g' >H1_KADK_H2_WHLL_H3_CHIN
grep "H1_H3_H2" KADK_CHIN_CWLH.txt |sed 's/H1_H3_H2/CWLH/g' >H1_KADK_H2_CWLH_H3_CHIN

cat H1_KADK_H2_BROC_H3_CHIN H1_KADK_H2_RIRL_H3_CHIN H1_KADK_H2_WHLL_H3_CHIN H1_KADK_H2_CWLH_H3_CHIN >H1_KADK_H2_BROC_CWLH_WHLL_RIRL_H3_CHIN

#convert CHIN_COMM_KADK file
grep "H2_H3_H1" KADK_CHIN_BROC.txt |sed 's/H2_H3_H1/BROC/g' >H1_CHIN_H2_BROC_H3_KADK
grep "H2_H3_H1" KADK_CHIN_RIRL.txt |sed 's/H2_H3_H1/RIRL/g' >H1_CHIN_H2_RIRL_H3_KADK
grep "H2_H3_H1" KADK_CHIN_WHLL.txt |sed 's/H2_H3_H1/WHLL/g' >H1_CHIN_H2_WHLL_H3_KADK
grep "H2_H3_H1" KADK_CHIN_CWLH.txt |sed 's/H2_H3_H1/CWLH/g' >H1_CHIN_H2_CWLH_H3_KADK
cat H1_CHIN_H2_BROC_H3_KADK H1_CHIN_H2_RIRL_H3_KADK H1_CHIN_H2_WHLL_H3_KADK H1_CHIN_H2_CWLH_H3_KADK >H1_CHIN_H2_BROC_CWLH_WHLL_RIRL_H3_KADK



##extract only Z score  >3 and <-3 
awk '$7>3{print $0}' H1_KADK_H2_CHIN_H3_BROC_CWLH_WHLL_RIRL > a
awk '$7<-3{print $0}' H1_KADK_H2_CHIN_H3_BROC_CWLH_WHLL_RIRL > b

cat a b >H1_KADK_H2_CHIN_H3_BROC_CWLH_WHLL_RIRL.trial


awk '$7>3{print $0}' H1_KADK_H2_BROC_CWLH_WHLL_RIRL_H3_CHIN > c
awk '$7<-3{print $0}' H1_KADK_H2_BROC_CWLH_WHLL_RIRL_H3_CHIN >d

cat c d > H1_KADK_H2_BROC_CWLH_WHLL_RIRL_H3_CHIN.trial


awk '$7>3{print $0}' H1_CHIN_H2_BROC_CWLH_WHLL_RIRL_H3_KADK > e
awk '$7<-3{print $0}' H1_CHIN_H2_BROC_CWLH_WHLL_RIRL_H3_KADK >f

cat e f > H1_CHIN_H2_BROC_CWLH_WHLL_RIRL_H3_KADK.trial


