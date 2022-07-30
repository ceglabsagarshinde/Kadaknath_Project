#calculate Dxy between Jhabua and Bhopal combination Z chromosome
for i in `cat jha_bhop.list`; 
do  
j=`echo $i |cut -f1 -d "_"` ; 
k=`echo $i |cut -f2 -d "_"`;
python popgenWindows.py -g commons_bcftools_SNPs_only.vcf.gz.geno.gz -o $i.50kb.csv.gz -f phased -w 50000 -s 50000 -p $j -p $k --popsFile jha_bho.list
done
#calculate Dxy between Jhabua and Bhopal combination autosome
for i in `cat jha_bhop.list`; 
do  
j=`echo $i |cut -f1 -d "_"` ; 
k=`echo $i |cut -f2 -d "_"`;
python popgenWindows.py -g Z.bcftools.vcf_common.geno.gz -o $i.50kb_Z.csv.gz -f phased -w 50000 -s 50000 -p $j -p $k --popsFile jha_bho.list
done

#Make single file of autosomes and Z chromosome for each comparision seperate
cat BH1_BH2.50kb.csv BH1_BH2.50kb_Z.csv >BH1_BH2.50kb_z_auto.csv
cat BH1_JHA.50kb.csv BH1_JHA.50kb_Z.csv >BH1_JHA.50kb_z_auto.csv
cat BH2_JHA.50kb.csv BH2_JHA.50kb_Z.csv >BH2_JHA.50kb_z_auto.csv

