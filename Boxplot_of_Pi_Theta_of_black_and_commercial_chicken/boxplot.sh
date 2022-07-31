#extract the columns within the population statistics file of ANGSD for Pi, theta, Tajima's D and Fu ald Li's D with Nsites.
for i in *gz.pestPG;do cut -f4,5,9,11,14 $i >$i.subset;done

#population-wise add the short names
sed -i 's/^/BROC7\t/g' BROC_7.thetasWindow.gz.pestPG.subset
sed -i 's/^/CHIN9\t/g' CHINA_9IND.thetasWindow.gz.pestPG.subset
sed -i 's/^/CHIN17\t/g' china.thetasWindow.gz.pestPG.subset
sed -i 's/^/CWHL3\t/g' CWHLL.thetasWindow.gz.pestPG.subset
sed -i 's/^/CWLH6\t/g' CWLH_6.thetasWindow.gz.pestPG.subset
sed -i 's/^/GOLD3\t/g' Golden.thetasWindow.gz.pestPG.subset
sed -i 's/^/JETB3\t/g' jetblack.thetasWindow.gz.pestPG.subset
sed -i 's/^/KADK9\t/g' KADAKNATH_9IND.thetasWindow.gz.pestPG.subset
sed -i 's/^/KADK11\t/g' KADAKNATH.thetasWindow.gz.pestPG.subset
sed -i 's/^/YOSK4\t/g' Korean.thetasWindow.gz.pestPG.subset
sed -i 's/^/LCEM\t/g' LCEM.thetasWindow.gz.pestPG.subset
sed -i 's/^/LCMY3\t/g' LCMY.thetasWindow.gz.pestPG.subset
sed -i 's/^/LCTMJ3\t/g' LCTMJ.thetasWindow.gz.pestPG.subset
sed -i 's/^/PENC3\t/g' pencill.thetasWindow.gz.pestPG.subset
sed -i 's/^/RIRL9\t/g' RIRL_9.thetasWindow.gz.pestPG.subset
sed -i 's/^/TBTC3\t/g' TBTC.thetasWindow.gz.pestPG.subset
sed -i 's/^/WHLL3\t/g' WHLL.50thetasWindow.gz.pestPG.subset
sed -i 's/^/XBBC3\t/g' XBBC.thetasWindow.gz.pestPG.subset
sed -i 's/^/YOSK3\t/g' YOSK.thetasWindow.gz.pestPG.subset
sed -i 's/^/GGMI3\t/g' GGMI.thetasWindow.gz.pestPG.subset


#merge all files and make single file
cat jetblack.thetasWindow.gz.pestPG.subset Golden.thetasWindow.gz.pestPG.subset pencill.thetasWindow.gz.pestPG.subset KADAKNATH_9IND.thetasWindow.gz.pestPG.subset KADAKNATH.thetasWindow.gz.pestPG.subset  LCEM.thetasWindow.gz.pestPG.subset LCMY.thetasWindow.gz.pestPG.subset LCTMJ.thetasWindow.gz.pestPG.subset  XBBC.thetasWindow.gz.pestPG.subset TBTC.thetasWindow.gz.pestPG.subset CHINA_9IND.thetasWindow.gz.pestPG.subset china.thetasWindow.gz.pestPG.subset YOSK.thetasWindow.gz.pestPG.subset Korean.thetasWindow.gz.pestPG.subset BROC_7.thetasWindow.gz.pestPG.subset CWHLL.thetasWindow.gz.pestPG.subset CWLH_6.thetasWindow.gz.pestPG.subset WHLL.50thetasWindow.gz.pestPG.subset RIRL_9.thetasWindow.gz.pestPG.subset  GGMI.thetasWindow.gz.pestPG.subset >boxplot
##remove the header
grep -v "nSites" boxplot >all.boxplot



