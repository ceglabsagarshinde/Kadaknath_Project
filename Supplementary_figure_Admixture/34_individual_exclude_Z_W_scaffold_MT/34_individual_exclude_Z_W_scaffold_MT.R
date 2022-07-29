pdf(file="34_individual_exclude_Z_W_scaffold_MT.pdf",width=800,height=1100)
par(mfrow=c(9,1))
par(mai=c(15,20,6,0.2),mgp=c(70,15,0))
pop<-read.table("short1.list",as.is=T)
q<-read.table("2.admixture.qopt")
# order according to population
ord<-order(pop[,1])
barplot(t(q)[,ord],col=c("green","black"),space=0,border=NA,xlab="",ylab="",las=2,yaxt='n',las=2,cex.lab=4,font.axis=2)
axis(2,at=c(0.0,0.2,0.4,0.6,0.8,1.0), lwd = 4,tck = -0.01,cex.axis=20,font = 5,las=2, line=-200)
title(ylab="Admixture proportions for K=2", mgp=c(0,0,0),cex.lab=40,line=-100)

par(mai=c(15,20,3,0.2),mgp=c(70,15,0))
q<-read.table("3.admixture.qopt")
# order according to population
ord<-order(pop[,1])
barplot(t(q)[,ord],col=c("black","green","blue"),space=0,border=NA,xlab="",ylab="",las=2,yaxt='n',las=2,cex.lab=4,font.axis=2)
axis(2,at=c(0.0,0.2,0.4,0.6,0.8,1.0), lwd = 4,tck = -0.01,cex.axis=20,font = 5,las=2, line=-200)
title(ylab="Admixture proportions for K=3", mgp=c(0,0,0),cex.lab=40,line=-100)

par(mai=c(15,20,3,0.2),mgp=c(70,15,0))
q<-read.table("4.admixture.qopt")
# order according to population
ord<-order(pop[,1])
barplot(t(q)[,ord],col=c("blue","green","yellow","black"),space=0,border=NA,xlab="",ylab="",las=2,yaxt='n',las=2,cex.lab=4,font.axis=2)
axis(2,at=c(0.0,0.2,0.4,0.6,0.8,1.0), lwd = 4,tck = -0.01,cex.axis=20,font = 5,las=2, line=-200)
title(ylab="Admixture proportions for K=4", mgp=c(0,0,0),cex.lab=40,line=-100)

par(mai=c(15,20,3,0.2),mgp=c(70,15,0))
q<-read.table("5.admixture.qopt")
# order according to population
ord<-order(pop[,1])
barplot(t(q)[,ord],col=c("green","red","black","yellow","blue"),space=0,border=NA,xlab="",ylab="",las=2,yaxt='n',las=2,cex.lab=4,font.axis=2)
axis(2,at=c(0.0,0.2,0.4,0.6,0.8,1.0), lwd = 4,tck = -0.01,cex.axis=20,font = 5,las=2, line=-200)
title(ylab="Admixture proportions for K=5", mgp=c(0,0,0),cex.lab=40,line=-100)

par(mai=c(15,20,3,0.2),mgp=c(70,15,0))
q<-read.table("6.admixture.qopt")
# order according to population
ord<-order(pop[,1])
barplot(t(q)[,ord],col=c("yellow","pink","red","blue","green","black"),space=0,border=NA,xlab="",ylab="",las=2,yaxt='n',las=2,cex.lab=4,font.axis=2)
axis(2,at=c(0.0,0.2,0.4,0.6,0.8,1.0), lwd = 4,tck = -0.01,cex.axis=20,font = 5,las=2, line=-200)
title(ylab="Admixture proportions for K=6", mgp=c(0,0,0),cex.lab=40,line=-100)

par(mai=c(15,20,3,0.2),mgp=c(70,15,0))
q<-read.table("7.admixture.qopt")
# order according to population
ord<-order(pop[,1])
barplot(t(q)[,ord],col=c("blue","red","tan","yellow","green","black","pink"),space=0,border=NA,xlab="",ylab="",las=2,yaxt='n',las=2,cex.lab=4,font.axis=2)
axis(2,at=c(0.0,0.2,0.4,0.6,0.8,1.0), lwd = 4,tck = -0.01,cex.axis=20,font = 5,las=2, line=-200)
title(ylab="Admixture proportions for K=7", mgp=c(0,0,0),cex.lab=40,line=-100)

par(mai=c(15,20,3,0.2),mgp=c(70,15,0))
q<-read.table("8.admixture.qopt")
# order according to population
ord<-order(pop[,1])
barplot(t(q)[,ord],col=c("yellow","violet","red","green","black","tan","pink","blue"),space=0,border=NA,xlab="",ylab="",las=2,yaxt='n',las=2,cex.lab=4,font.axis=2)
axis(2,at=c(0.0,0.2,0.4,0.6,0.8,1.0), lwd = 4,tck = -0.01,cex.axis=20,font = 5,las=2, line=-200)
title(ylab="Admixture proportions for K=8", mgp=c(0,0,0),cex.lab=40,line=-100)

par(mai=c(15,20,3,0.2),mgp=c(70,15,0))
q<-read.table("9.admixture.qopt")
# order according to population
ord<-order(pop[,1])
barplot(t(q)[,ord],col=c("brown","green","pink","tan","blue","black","yellow","violet","red"),space=0,border=NA,xlab="",ylab="",las=2,yaxt='n',las=2,cex.lab=4,font.axis=2)
axis(2,at=c(0.0,0.2,0.4,0.6,0.8,1.0), lwd = 4,tck = -0.01,cex.axis=20,font = 5,las=2, line=-200)
title(ylab="Admixture proportions for K=9", mgp=c(0,0,0),cex.lab=40,line=-100)


par(mai=c(35,20,3,0.2),mgp=c(70,15,0))
q<-read.table("10.admixture.qopt")
# order according to population
ord<-order(pop[,1])
barplot(t(q)[,ord],col=c("green","black","pink","yellow","orange","tan","blue","violet","red","brown"),space=0,border=NA,xlab="",ylab="",las=2,yaxt='n',las=2,cex.lab=4,font.axis=2)
axis(2,at=c(0.0,0.2,0.4,0.6,0.8,1.0), lwd = 4,tck = -0.01,cex.axis=20,font = 5,las=2, line=-200)
title(ylab="Admixture proportions for K=10", mgp=c(0,0,0),cex.lab=40,line=-100)
text(tapply(1:nrow(pop),pop[ord,1],mean),-0.2,unique(pop[ord,1]),xpd=T,srt=90,cex=40)
dev.off()

