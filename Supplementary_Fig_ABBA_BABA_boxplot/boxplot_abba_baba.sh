for i in `cat three_pop.list`; 
do  
j=`echo $i |cut -f1 -d "_"`; 
k=`echo $i |cut -f2 -d "_"`;
l=`echo $i |cut -f3 -d "_"`;
python ABBABABAwindows.py -g commons_bcftools_SNPs_only.vcf.gz.geno.gz -f phased -o "$i"_RJF_50KB_no_goodsite.csv.gz -P1 $j -P2 $k -P3 $l -O RJF --popsFile pop.info -w 50000 -s 50000 --T 8
done


for i in `cat three_pop.list`; 
do  
j=`echo $i |cut -f1 -d "_"`; 
k=`echo $i |cut -f2 -d "_"`;
l=`echo $i |cut -f3 -d "_"`;
python ABBABABAwindows.py -g Z.bcftools.vcf_common.geno.gz -f phased -o Z_"$i"_RJF_50KB_no_goodsite.csv.gz -P1 $j -P2 $k -P3 $l -O RJF --popsFile pop.info -w 50000 -s 50000 --T 8
done



#merge in single format 
cat Z_CHIN_BROC_KADK_RJF_50KB_no_goodsite.csv CHIN_BROC_KADK_RJF_50KB_no_goodsite.csv |sed 's/,/\t/g' |cut -f9 |sed 's/^/BROC\t/g' |grep -v "D" >CHIN_BROC_KADK_RJF.list
cat Z_CHIN_CWLH_KADK_RJF_50KB_no_goodsite.csv CHIN_CWLH_KADK_RJF_50KB_no_goodsite.csv |sed 's/,/\t/g' |cut -f9 |sed 's/^/CWLH\t/g' |grep -v "D" >CHIN_CWLH_KADK_RJF.list
cat Z_CHIN_RIRL_KADK_RJF_50KB_no_goodsite.csv CHIN_RIRL_KADK_RJF_50KB_no_goodsite.csv |sed 's/,/\t/g' |cut -f9 |sed 's/^/RIRL\t/g' | grep -v "D" >CHIN_RIRL_KADK_RJF.list
cat Z_CHIN_WHLL_KADK_RJF_50KB_no_goodsite.csv CHIN_WHLL_KADK_RJF_50KB_no_goodsite.csv |sed 's/,/\t/g' |cut -f9 |sed 's/^/WHLL\t/g' | grep -v "D" >CHIN_WHLL_KADK_RJF.list

cat Z_KADK_BROC_CHIN_RJF_50KB_no_goodsite.csv KADK_BROC_CHIN_RJF_50KB_no_goodsite.csv |sed 's/,/\t/g' |cut -f9 |sed 's/^/BROC\t/g' | grep -v "D" >KADK_BROC_CHIN_RJF.list
cat Z_KADK_CWLH_CHIN_RJF_50KB_no_goodsite.csv KADK_CWLH_CHIN_RJF_50KB_no_goodsite.csv |sed 's/,/\t/g' |cut -f9 |sed 's/^/CWLH\t/g' |grep -v "D" >KADK_CWLH_CHIN_RJF.list
cat Z_KADK_RIRL_CHIN_RJF_50KB_no_goodsite.csv KADK_RIRL_CHIN_RJF_50KB_no_goodsite.csv |sed 's/,/\t/g' |cut -f9 |sed 's/^/RIRL\t/g' |grep -v "D" >KADK_RIRL_CHIN_RJF.list
cat Z_KADK_WHLL_CHIN_RJF_50KB_no_goodsite.csv KADK_WHLL_CHIN_RJF_50KB_no_goodsite.csv |sed 's/,/\t/g' |cut -f9 |sed 's/^/WHLL\t/g' |grep -v "D" >KADK_WHLL_CHIN_RJF.list

cat Z_KADK_CHIN_BROC_RJF_50KB_no_goodsite.csv KADK_CHIN_BROC_RJF_50KB_no_goodsite.csv |sed 's/,/\t/g' |cut -f9 |sed 's/^/BROC\t/g' | grep -v "D" >KADK_CHIN_BROC_RJF.list
cat Z_KADK_CHIN_CWLH_RJF_50KB_no_goodsite.csv KADK_CHIN_CWLH_RJF_50KB_no_goodsite.csv |sed 's/,/\t/g' |cut -f9 |sed 's/^/CWLH\t/g' |grep -v "D" >KADK_CHIN_CWLH_RJF.list
cat Z_KADK_CHIN_RIRL_RJF_50KB_no_goodsite.csv KADK_CHIN_RIRL_RJF_50KB_no_goodsite.csv |sed 's/,/\t/g' |cut -f9 |sed 's/^/RIRL\t/g' |grep -v "D" >KADK_CHIN_RIRL_RJF.list 
cat Z_KADK_CHIN_WHLL_RJF_50KB_no_goodsite.csv KADK_CHIN_WHLL_RJF_50KB_no_goodsite.csv |sed 's/,/\t/g' |cut -f9 |sed 's/^/WHLL\t/g' |grep -v "D" >KADK_CHIN_WHLL_RJF.list



#merge in single file
cat CHIN_BROC_KADK_RJF.list CHIN_CWLH_KADK_RJF.list CHIN_RIRL_KADK_RJF.list CHIN_WHLL_KADK_RJF.list >CHIN_COMM_KADK_RJF.boxplot

cat KADK_CHIN_BROC_RJF.list KADK_CHIN_CWLH_RJF.list KADK_CHIN_RIRL_RJF.list KADK_CHIN_WHLL_RJF.list >KADK_CHIN_COMM_boxplot

cat KADK_CWLH_CHIN_RJF.list KADK_RIRL_CHIN_RJF.list KADK_WHLL_CHIN_RJF.list KADK_BROC_CHIN_RJF.list >KADK_COMM_CHIN_RJF.boxplot
