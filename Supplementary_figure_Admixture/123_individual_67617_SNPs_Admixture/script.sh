## subset the vcf file for required individuals
bcftools view -S 109.list -O z -o 109_ind_final.vcf.gz 123_ind_final.vcf
bcftools view -S 100.list -O z -o 100_ind_final.vcf.gz 109_ind_final.vcf
bcftools view -S 88.list -O z -o 88_ind_final.vcf.gz 100_ind_final.vcf
##run docker.sh, put all files in docker/data folder
admixturePipeline.py -v 123_ind_final.vcf -k 1 -K15 -m 123_pop_map.txt -R 15
admixturePipeline.py -v 109_ind_final.vcf -k 1 -K15 -m 109_pop_map.txt -R 15
admixturePipeline.py -v 100_ind_final.vcf -k 1 -K15 -m 100_pop_map.txt -R 15
admixturePipeline.py -v 88_ind_final.vcf -k 1 -K15 -m 88_ind_popmap.txt -R 15


