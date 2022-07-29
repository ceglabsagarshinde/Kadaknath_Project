#Map of Asia
tiff("Asia.tiff", width = 10, height = 9, units = 'in', res = 200)
library(rworldmap)
worldmap <- getMap(resolution = "coarse")
par(mar=c(0.1,0.1,0.1,0.1))
plot(worldmap, xlim = c(70, 135), ylim = c(-8, 40), asp = 1, bg = "deepskyblue", border = "grey", col="grey", fill = T)
points(77.2743,23.2879 ,col="black",pch=1,cex=2,lwd=3) #iiser bhopal GOLD
points(77.2743,23.2879 ,col="black",pch=9,cex=2,lwd=3) #iiser bhopal PEN
points(77.2743,23.2879 ,col="black",pch=3,cex=2,lwd=3) #iiser bhopal JET
points(77.2743,23.2879 ,col="black",pch=2,cex=2,lwd=3) #iiser bhopal golpen
points(77.2743,23.2879 ,col="black",pch=0,cex=2,lwd=3) #iiser bhopal X1
points(74.5996,22.7644 ,col="black",pch=1,cex=2,lwd=3) #JHEBUE GOLD
points(74.5996,22.7644 ,col="black",pch=9,cex=2,lwd=3) #JHEBUA PEN
points(74.5996,22.7644 ,col="black",pch=3,cex=2,lwd=3) #JHEBUA JET
points(113.92,0.7833,col="black",pch=12,cex=2,lwd=3) #indonesia AYCM
points(120.673645,24.147736,col="black",pch=13,cex=2,lwd=3) #SILKI
points(111.2446,32.5611, col="black",pch=18,cex=2,lwd=3) #xbcc
points(127.3694,35.0203, col="black",pch=10,cex=2,lwd=3) #YOSK
points(103.5966083,29.2233495,col="black", pch=4,cex=2,lwd=3) #LCEM
points(113.0848,28.1810,col="black", pch=4,cex=2,lwd=3)#LCEM
points(103.013261,29.980537,col="black", pch=5,cex=2,lwd=3) #LCJY
points(103.900516,28.9598352,col="black", pch=6,cex=2,lwd=3) #LCMC
points(101.7179276,26.5860102,,col="black", pch=7,cex=2,lwd=3)#LCMY
points(104.0633717,30.6598628,col="black", pch=16,cex=2,lwd=3) #LCTF
points(102.224653,31.899413,col="black", pch=15,cex=2,lwd=3)#TCAB_FM
points(99.706316,27.8151368,col="black", pch=14,cex=2,lwd=3)#TCDQ_FM
points(107.447,30.8099,col="black",pch=8,cex=2,lwd=3) #TCGZ_FM
legend("bottomright",legend=c("GOLD","PENC","JETB","GOPE","CROS","AYCM","SILK","XBCC","YOSK","LCEM","LCJY","LCMC","LCMY","LCTF","TCAB_FM","TCDQ_FM","TCGZ_FM"),col=c("black","black","black","black","black","black","black","black","black","black","black","black","black","black","black","black","black"),pch=c(1,9,3,2,0,12,13,18,10,4,5,6,7,16,15,14,8),cex=1.3,lwd=2,lty=c(NA))
dev.off()


#Map of China
tiff("China.tiff", width = 5, height = 4, units = 'in', res = 200)
library(maps)
library(mapdata)
par(mar=c(0,0,0,0))
map("china",col = "grey", ylim = c(18, 54),bg="white")
points(111.2446,32.5611, col="black",pch=18,cex=1.5) #XBBC
points(103.5966083,29.2233495,col="black", pch=4,cex=1.5)#LCEM
points(113.0848,28.1810,col="black", pch=4,cex=1.5)#LCEM
points(103.013261,29.980537,col="black", pch=5,cex=1.5) #LCJY
points(103.900516,28.9598352,col="black", pch=6,cex=1.5) #LCMC
points(101.7179276,26.5860102,,col="black", pch=7,cex=1.5)#LCMY
points(104.0633717,30.6598628,col="black", pch=16,cex=1.5) #LCTF
points(102.224653,31.899413,col="black", pch=15,cex=1.5)#TCAB_FM
points(99.706316,27.8151368,col="black", pch=14,cex=1.5)#TCDQ_FM
points(107.447,30.8099,col="black",pch=8,cex=1.5) #TCGZ_FM
dev.off()


