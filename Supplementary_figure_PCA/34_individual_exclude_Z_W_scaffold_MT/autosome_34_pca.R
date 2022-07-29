tiff("pca34_autosomes_PC1_PC2.tiff", width = 10, height = 9, units = 'in', res = 200)
C <- read.table(file="genolike_allblack34_all_autosomes.cov.cov")
m<-as.matrix(C)
e <- eigen(m, symm=TRUE)
e$val <- e$val/sum(e$val)
cat(signif(e$val, digits=3)*100,"\n")
signif(e$val, digits=3)*100->evec
s<-strsplit(basename(scan("short.list",what="the")),"\\.")
pop<-sapply(s,function(x){paste(x[1],sep="")})
ifelse(pop %in% "CROS","black",ifelse(pop %in% "GOLD","black",ifelse(pop %in% "GOPE","black",ifelse(pop %in% "JETB","black",ifelse(pop %in% "LCEM","black",ifelse (pop %in% "LCJY","black",ifelse(pop %in% "LCMC","black",ifelse(pop %in% "LCMY","black",ifelse(pop %in% "LCTF","black",ifelse(pop %in% "YOSK","black",ifelse(pop %in% "PENC","black",ifelse(pop %in% "AYCM","black",ifelse(pop %in% "SILK","black",ifelse(pop %in% "TCAB_FM","black",ifelse(pop %in% "TCDQ_FM","black",ifelse(pop %in% "TCGZ_FM","black",ifelse(pop %in% "XBBC","black","green")))))))))))))))))->popcol
ifelse(pop %in% "CROS",0,ifelse(pop %in% "GOLD",1,ifelse(pop %in% "GOPE",2,ifelse(pop %in% "JETB",3,ifelse(pop %in% "LCEM",4,ifelse (pop %in% "LCJY",5,ifelse(pop %in% "LCMC",6,ifelse(pop %in% "LCMY",7,ifelse(pop %in% "LCTF",16,ifelse(pop %in% "YOSK",10,ifelse(pop %in% "PENC",9,ifelse(pop %in% "SILK",13,ifelse(pop %in% "TCAB_FM",15,ifelse(pop %in% "AYCM",12,ifelse(pop %in% "TCDQ_FM",14,ifelse(pop %in% "TCGZ_FM",8,ifelse(pop %in% "XBBC",18,0)))))))))))))))))->poppch
pop1<-as.data.frame(pop)
pop1$col<-popcol
pop1$pch<-poppch
unique(pop1,)->a
par(mar=c(5,5,1,8),mgp=c(2.7, 0.5, 0),xpd = T)
plot(e$vectors[,1],e$vectors[,2],lwd=2,ylab=c(paste("PC2","(",evec[2],"%",")")),xlab=c(paste("PC1","(",evec[1],"%",")")),font=2,col=popcol,pch=as.numeric(pop1$pch),cex=2.7,cex.lab=1.7,cex.axis=1.3,font.lab=2)
#title(main=c(paste("PC1","(",evec[1],"%",")","/","PC2","(",evec[2],"%",")")),line=0.3 ,cex.main = 2 )
box(lwd=3)
#text(e$vectors[,1],e$vectors[,2],pop1$pop)
legend("topright",legend=as.factor(a$pop),col=a$col,cex=0.9, pch=as.numeric(a$pch),pt.cex=1.5)
dev.off()



tiff("pca34_autosomes_PC2_PC3.tiff", width = 10, height = 9, units = 'in', res = 200)
C <- read.table(file="genolike_allblack34_all_autosomes.cov.cov")
m<-as.matrix(C)
e <- eigen(m, symm=TRUE)
e$val <- e$val/sum(e$val)
cat(signif(e$val, digits=3)*100,"\n")
signif(e$val, digits=3)*100->evec
s<-strsplit(basename(scan("short.list",what="the")),"\\.")
pop<-sapply(s,function(x){paste(x[1],sep="")})
ifelse(pop %in% "CROS","black",ifelse(pop %in% "GOLD","black",ifelse(pop %in% "GOPE","black",ifelse(pop %in% "JETB","black",ifelse(pop %in% "LCEM","black",ifelse (pop %in% "LCJY","black",ifelse(pop %in% "LCMC","black",ifelse(pop %in% "LCMY","black",ifelse(pop %in% "LCTF","black",ifelse(pop %in% "YOSK","black",ifelse(pop %in% "PENC","black",ifelse(pop %in% "AYCM","black",ifelse(pop %in% "SILK","black",ifelse(pop %in% "TCAB_FM","black",ifelse(pop %in% "TCDQ_FM","black",ifelse(pop %in% "TCGZ_FM","black",ifelse(pop %in% "XBBC","black","green")))))))))))))))))->popcol
ifelse(pop %in% "CROS",0,ifelse(pop %in% "GOLD",1,ifelse(pop %in% "GOPE",2,ifelse(pop %in% "JETB",3,ifelse(pop %in% "LCEM",4,ifelse (pop %in% "LCJY",5,ifelse(pop %in% "LCMC",6,ifelse(pop %in% "LCMY",7,ifelse(pop %in% "LCTF",16,ifelse(pop %in% "YOSK",10,ifelse(pop %in% "PENC",9,ifelse(pop %in% "SILK",13,ifelse(pop %in% "TCAB_FM",15,ifelse(pop %in% "AYCM",12,ifelse(pop %in% "TCDQ_FM",14,ifelse(pop %in% "TCGZ_FM",8,ifelse(pop %in% "XBBC",18,0)))))))))))))))))->poppch
pop1<-as.data.frame(pop)
pop1$col<-popcol
pop1$pch<-poppch
unique(pop1,)->a
par(mar=c(5,5,1,8),mgp=c(2.7, 0.5, 0),xpd = T)
plot(e$vectors[,2],e$vectors[,3],lwd=2,ylab=c(paste("PC3","(",evec[3],"%",")")),xlab=c(paste("PC2","(",evec[2],"%",")")),font=2,col=popcol,pch=as.numeric(pop1$pch),cex=2.7,cex.lab=1.7,cex.axis=1.3,font.lab=2)
#title(main=c(paste("PC2","(",evec[2],"%",")","/","PC3","(",evec[3],"%",")")),line=0.3 ,cex.main = 2 )
box(lwd=3)
#text(e$vectors[,2],e$vectors[,3],pop1$pop)
legend("bottomright",legend=as.factor(a$pop),col=a$col,cex=0.9, pch=as.numeric(a$pch),pt.cex=1.5)
dev.off()

tiff("pca34_autosomes_PC1_PC3.tiff", width = 10, height = 9, units = 'in', res = 200)
C <- read.table(file="genolike_allblack34_all_autosomes.cov.cov")
m<-as.matrix(C)
e <- eigen(m, symm=TRUE)
e$val <- e$val/sum(e$val)
cat(signif(e$val, digits=3)*100,"\n")
signif(e$val, digits=3)*100->evec
s<-strsplit(basename(scan("short.list",what="the")),"\\.")
pop<-sapply(s,function(x){paste(x[1],sep="")})
ifelse(pop %in% "CROS","black",ifelse(pop %in% "GOLD","black",ifelse(pop %in% "GOPE","black",ifelse(pop %in% "JETB","black",ifelse(pop %in% "LCEM","black",ifelse (pop %in% "LCJY","black",ifelse(pop %in% "LCMC","black",ifelse(pop %in% "LCMY","black",ifelse(pop %in% "LCTF","black",ifelse(pop %in% "YOSK","black",ifelse(pop %in% "PENC","black",ifelse(pop %in% "AYCM","black",ifelse(pop %in% "SILK","black",ifelse(pop %in% "TCAB_FM","black",ifelse(pop %in% "TCDQ_FM","black",ifelse(pop %in% "TCGZ_FM","black",ifelse(pop %in% "XBBC","black","green")))))))))))))))))->popcol
ifelse(pop %in% "CROS",0,ifelse(pop %in% "GOLD",1,ifelse(pop %in% "GOPE",2,ifelse(pop %in% "JETB",3,ifelse(pop %in% "LCEM",4,ifelse (pop %in% "LCJY",5,ifelse(pop %in% "LCMC",6,ifelse(pop %in% "LCMY",7,ifelse(pop %in% "LCTF",16,ifelse(pop %in% "YOSK",10,ifelse(pop %in% "PENC",9,ifelse(pop %in% "SILK",13,ifelse(pop %in% "TCAB_FM",15,ifelse(pop %in% "AYCM",12,ifelse(pop %in% "TCDQ_FM",14,ifelse(pop %in% "TCGZ_FM",8,ifelse(pop %in% "XBBC",18,0)))))))))))))))))->poppch
pop1<-as.data.frame(pop)
pop1$col<-popcol
pop1$pch<-poppch
unique(pop1,)->a
par(mar=c(5,5,1,8),mgp=c(2.7, 0.5, 0),xpd = T)
plot(e$vectors[,1],e$vectors[,3],lwd=2,ylab=c(paste("PC3","(",evec[3],"%",")")),xlab=c(paste("PC1","(",evec[1],"%",")")),font=2,col=popcol,pch=as.numeric(pop1$pch),cex=2.7,cex.lab=1.7,cex.axis=1.3,font.lab=2)
#title(main=c(paste("PC1","(",evec[1],"%",")","/","PC3","(",evec[3],"%",")")),line=0.3 ,cex.main = 2 )
box(lwd=3)
#text(e$vectors[,1],e$vectors[,3],pop1$pop)
legend("topright",legend=as.factor(a$pop),col=a$col,cex=0.9, pch=as.numeric(a$pch),pt.cex=1.5)
dev.off()

