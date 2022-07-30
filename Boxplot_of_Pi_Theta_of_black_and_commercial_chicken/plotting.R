#read.table("all_boxplot")->a
#tiff("ALL_pi_theta.tif",width=2000,height=1500)
#par(mar=c(12, 12, 2, 2.1), mgp=c(8.5, 0.7, 0))
#par(mfrow=c(2,1))
#boxplot(as.numeric(a$V3/a$V4)~a$V1,las=2,cex.axis=2,outline=F,ylab=expression(bold(paste(pi))),xlab="Populations",cex.lab =3)
#boxplot(as.numeric(a$V2/a$V4)~a$V1,las=2,cex.axis=2,outline=F,ylab=expression(bold(paste(theta['W']))),xlab="Populations",cex.lab =3)
#dev.off()


read.table("all.boxplot")->a
a$names<-factor(a$V1,level=c("JETB3","GOLD3","PENC3","KADK9","KADK11","LCEM","LCMY3","LCTMJ3","XBBC3","TBTC3","CHIN9","CHIN17","YOSK3","YOSK4","BROC7","CWHL3","CWLH6","WHLL3","RIRL9","GGMI3"))

tiff("ALL_pi_theta.tif",width=2000,height=1500)
par(mar=c(12, 12, 2, 2.1), mgp=c(8.5, 0.7, 0))
par(mfrow=c(2,1))
boxplot(as.numeric(a$V3/a$V6)~a$names,las=2,cex.axis=2,outline=F,ylab=expression(bold(paste(pi))),xlab="Populations",cex.lab =3)
boxplot(as.numeric(a$V2/a$V6)~a$names,las=2,cex.axis=2,outline=F,ylab=expression(bold(paste(theta['W']))),xlab="Populations",cex.lab =3)
dev.off()


tiff("ALL_tajimasD_Fuand_lis.tif",width=2000,height=1500)
par(mar=c(12, 12, 2, 2.1), mgp=c(8.5, 0.7, 0))
par(mfrow=c(2,1))
boxplot(as.numeric(a$V4/a$V6)~a$names,las=2,cex.axis=2,outline=F,ylab=expression(bold(paste("Tajima's D"))),xlab="Populations",cex.lab =3)
boxplot(as.numeric(a$V5/a$V6)~a$names,las=2,cex.axis=2,outline=F,ylab=expression(bold(paste("Fu & Li's D"))),xlab="Populations",cex.lab =3)
dev.off()


