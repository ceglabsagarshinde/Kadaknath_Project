
for i in *50kb; do sed 's/(/\t(/3' $i|awk '{print $1,$2"_"$3,$4,$5,$6}' |sed 's/ /\t/g' |cut -f2  > $i.txt; done
for i in *50kb; do sed 's/(/\t(/3' $i|awk '{print $1,$2"_"$3,$4,$5,$6}' |sed 's/ /\t/g' > $i.column; done


#for FST
# for extracting selected columns
for i in *column; do sed 's/_/\t/g' $i |sed 's/(//3' |sed 's/)//3' |sed 's/,/\t/3' |awk '{print $2"\t"$3"\t"$4"\t"$7}'|awk '{print $3"\t"$1"\t"$2"\t"$4}' |grep -v "chr" |sort -V |awk '{print $2"\t"$3"\t"$1"\t"$4"\t"$1}' |sed '1s/^/BP\tSNP\tCHR\tP\tchr\n/g'| grep -v -w "W"|grep -v "AA" > $i.txt; done


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
#autosome
grep -v -w "Z" YeonsanOgye_XBBC.fst.idx.50kb.column.txt |wc -l
19159
19159×0.99=18967 (# for 99th percentile)
19159−18967=192(#for the 99 percentile data)




grep -v -w "Z" YeonsanOgye_XBBC.fst.idx.50kb.column.txt |sort -k4n |tail -n192 |head -n1
0.562525

#zchr
grep -w "Z"  YeonsanOgye_XBBC.fst.idx.50kb.column.txt |wc -l 
1642
1642×0.99=1625 (# for 99th percentile)
1642−1625=17(#for the 99 percentile data)

grep -w "Z" YeonsanOgye_XBBC.fst.idx.50kb.column.txt |sort -k4n |tail -n17 |head -n1
0.941967






##############################################################################################################################
for 10 kb fst
for i in YeonsanOgye_XBBC.fst.idx.10kb; do sed 's/(/\t(/3' $i|awk '{print $1,$2"_"$3,$4,$5,$6}' |sed 's/ /\t/g' |cut -f2  > $i.txt; done
for i in YeonsanOgye_XBBC.fst.idx.10kb; do sed 's/(/\t(/3' $i|awk '{print $1,$2"_"$3,$4,$5,$6}' |sed 's/ /\t/g' > $i.column; done

for i in YeonsanOgye_XBBC.fst.idx.10kb.column; do sed 's/_/\t/g' $i |sed 's/(//3' |sed 's/)//3' |sed 's/,/\t/3' |awk '{print $2"\t"$3"\t"$4"\t"$7}'|awk '{print $3"\t"$1"\t"$2"\t"$4}' |grep -v "chr" |sort -V |awk '{print $2"\t"$3"\t"$1"\t"$4"\t"$1}' |sed '1s/^/BP\tSNP\tCHR\tP\tchr\n/g'| grep -v -w "W"|grep -v "AA" > $i.txt; done



