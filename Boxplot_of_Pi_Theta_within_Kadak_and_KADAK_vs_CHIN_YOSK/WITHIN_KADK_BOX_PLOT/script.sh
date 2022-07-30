sed 's/(/\t(/3' Golden.thetasWindow.gz.pestPG |cut -f2,3,5,6,15 |sed 's/^/GOLD\t/g' > GOLD.boxplot
sed 's/(/\t(/3' jetblack.thetasWindow.gz.pestPG |cut -f2,3,5,6,15 |sed 's/^/JETB\t/g' > JETB.boxplot
sed 's/(/\t(/3' pencill.thetasWindow.gz.pestPG |cut -f2,3,5,6,15 |sed 's/^/PENC\t/g' > PENC.boxplot

cat GOLD.boxplot JETB.boxplot PENC.boxplot |grep -v "Chr" >all_boxplot

