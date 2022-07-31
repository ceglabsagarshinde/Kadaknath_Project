#extract the columns within the population statistics file of ANGSD for each windows of start and end, Pi, theta with Nsites.
sed 's/(/\t(/3' Korean.thetasWindow.gz.pestPG |cut -f2,3,5,6,15 |sed 's/^/Korean_black\t/g' > Korean.boxplot
sed 's/(/\t(/3' CHINA_9IND.thetasWindow.gz.pestPG |cut -f2,3,5,6,15 |sed 's/^/Chinese_black\t/g' > Chinese.boxplot
sed 's/(/\t(/3' KADAKNATH_9IND.thetasWindow.gz.pestPG |cut -f2,3,5,6,15 |sed 's/^/India_black\t/g' > India.boxplot


#merge file and remove header
cat India.boxplot Chinese.boxplot Korean.boxplot  |grep -v "Chr" >all_boxplot

#replace the names
sed -i  's/India_black/KADK/g' all_boxplot
sed -i  's/Chinese_black/CHIN/g' all_boxplot
sed -i  's/Korean_black/YOSK/g' all_boxplot

