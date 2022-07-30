#calculate top 5 % value of Fst for each comparision 
read.csv("KADK_CHIN_BROC_RJF_50KB_no_goodsite.csv",header=T)->A
read.table("kadk_9ind.china_9ind.50kb.column_AUTOSOME.txt",header=T)->G
read.table("chine_9ind.BROC_7ind.fst.idx.50kb.column.txt.autosome.txt",header=T)->B
read.table("kadk_9ind.BROC_7ind.fst.idx.50kb.column.txt.autosome.txt",header=T)->C
quantile(B$P,prob=0.95)->a
quantile(C$P,prob=0.95)->b
quantile(G$P,prob=0.95)->c

#extract top 5% fst sites for each comparision
awk '$4>0.2963474{print $0}' chine_9ind.BROC_7ind.fst.idx.50kb.column.txt.autosome.txt >chine_9ind.BROC_7ind.outlier
awk '$4>0.335021{print $0}' kadk_9ind.BROC_7ind.fst.idx.50kb.column.txt.autosome.txt >kadk_9ind.BROC_7ind.outlier
awk '$4>0.2675285{print $0}' kadk_9ind.china_9ind.50kb.column_AUTOSOME.txt >kadk_9ind.china_9ind.outlier

#extract >25 sites abba
sed 's/,/\t/g' KADK_CHIN_BROC_RJF_50KB_no_goodsite.csv |awk '$7>25{print $0}' >abbab_sites.bed
#extract >25 sites babab
sed 's/,/\t/g' KADK_CHIN_BROC_RJF_50KB_no_goodsite.csv |awk '$8>25{print $0}' >baba_sites.bed

#make window 50001 to 50000 format
sed 's/0001/0000/g' baba_sites.bed |awk '{print $1"_"$2"_"$3}' >baba.list
sed 's/0001/0000/g' abbab_sites.bed |awk '{print $1"_"$2"_"$3}' >abba.list

#make bed format of each comparision 
cat chine_9ind.BROC_7ind.outlier |awk '{print $3"_"$1"_"$2}' >chine_9ind.BROC_7ind.outlier.list
cat kadk_9ind.BROC_7ind.outlier |awk '{print $3"_"$1"_"$2}' >kadk_9ind.BROC_7ind.outlier.list
cat kadk_9ind.china_9ind.outlier |awk '{print $3"_"$1"_"$2}' >kadk_9ind.china_9ind.outlier.list

#extract baba sites
cat chine_9ind.BROC_7ind.outlier.list  kadk_9ind.china_9ind.outlier.list baba.list |sort |uniq -c |sed 's/      //g' |sed 's/ /\t/g' |awk '$1==3{print $0}' |sort -V |sed 's/_/\t/g' |cut -f2,3,4  >KADK_CHIN_BROC_baba.bed

#extract abba sites
cat kadk_9ind.BROC_7ind.outlier.list  kadk_9ind.china_9ind.outlier.list abba.list |sort |uniq -c |sed 's/      //g' |sed 's/ /\t/g' |awk '$1==3{print $0}' |sort -V |sed 's/_/\t/g' |cut -f2,3,4  >KADK_CHIN_BROC_abba.bed

#for plotting in pdf candidate region
cat KADK_CHIN_BROC_baba.bed KADK_CHIN_BROC_abba.bed >a.bed




