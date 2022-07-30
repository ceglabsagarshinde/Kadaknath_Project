#calculate Dxy between kadaknath morphs combination Zchromosome
for i in `cat kadkn.list`; 
do  
j=`echo $i |cut -f1 -d "_"` ; 
k=`echo $i |cut -f2 -d "_"`;
python popgenWindows.py -g Z.bcftools.vcf_common.geno.gz -o $i.ZCHR_50kb.csv.gz -f phased -w 50000 -s 50000 -p $j -p $k --popsFile kadk.list 
done

#calculate Dxy between kadaknath morphs combination autosome
for i in `cat kadkn.list`;
do
j=`echo $i |cut -f1 -d "_"` ;
k=`echo $i |cut -f2 -d "_"`;
python popgenWindows.py -g commons_bcftools_SNPs_only.vcf.gz.geno.gz -o $i.50kb.csv.gz -f phased -w 50000 -s 50000 -p $j -p $k --popsFile kadk.list 
done


#Make single file of autosomes and Zchromosome for each comparision seperate
cat GOLD_JETB.50kb.csv GOLD_JETB.ZCHR_50kb.csv >GOLD_JETB.50kb_auto_z.csv
cat GOLD_PENC.50kb.csv GOLD_PENC.ZCHR_50kb.csv >GOLD_PENC.50kb_auto_z.csv
cat PENC_JETB.50kb.csv PENC_JETB.ZCHR_50kb.csv >PENC_JETB.ZCHR_50kb_auto_z.csv

