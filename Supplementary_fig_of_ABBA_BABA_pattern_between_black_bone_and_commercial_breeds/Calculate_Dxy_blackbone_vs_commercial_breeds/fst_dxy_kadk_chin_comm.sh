#calculate Dxy for combination of black-bone vs commercial chicken  autosomes in 50 kb window

for i in `cat pop_comm_black_bone`; 
do  
j=`echo $i |cut -f1 -d "_"` ; 
k=`echo $i |cut -f2 -d "_"`;
python popgenWindows.py -g commons_bcftools_SNPs_only.vcf.gz.geno.gz -o $i.50kb.csv.gz -f phased -w 50000 -s 50000 -p $j -p $k --popsFile list.abbababa_fst  -T 4
done



#calculate Dxy for combination of black-bone vs commercial chicken Z chr in 50 kb window

for i in `cat pop_comm_black_bone`; 
do  
j=`echo $i |cut -f1 -d "_"` ; 
k=`echo $i |cut -f2 -d "_"`;
python popgenWindows.py -g Z.bcftools.vcf_common.geno.gz -o $i.50kb_Zchr.csv.gz -f phased -w 50000 -s 50000 -p $j -p $k --popsFile list.abbababa_fst  -T 4
done


