#Download  repeat regions in Galgal6 genome using ucsc browser
cut -f5,6,7 hgIntegratorResults|sed 's/chr//g' |grep -v "random" |grep -v "W" |grep -v "M" |grep -v "#" |grep -v "genoName" |sort -V  >repeat.bed

#count the number of repeat in 50Kb window using bedtools coverage
bedtools coverage -b repeat.bed -a window50kb.bed >plot.repeat
