#phastCons  score downloaded from the https://hgdownload.soe.ucsc.edu/goldenPath/galGal6/phastCons77way/galGal6.77way.phastCons/chr11.phastCons77way.wigFix.gz   sites

#unzip the file
gunzip chr11.phastCons77way.wigFix.gz

#convert wigfix file to bed file format
wig2bed < chr11.phastCons77way.wigFix > chr11.phastCons77way.wigFix.bed

#intersect the PENC private allele site with phastCons bed file  
bedtools intersect -a chr11.phastCons77way.wigFix.bed -b pen.bed >pen.uniq_change.txt


