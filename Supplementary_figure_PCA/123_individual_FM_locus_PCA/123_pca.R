tiff("PCA_FLANK1_123_ind.tiff", width = 13, height = 12, units = 'in', res = 200)
C <- read.table(file="genolike_123_flank1.beagle.gz.cov.cov")
m<-as.matrix(C)
e <- eigen(m, symm=TRUE)
e$val <- e$val/sum(e$val)
cat(signif(e$val, digits=3)*100,"\n")
signif(e$val, digits=3)*100->evec
s<-strsplit(basename(scan("short.list",what="the")),"\\.")
pop<-sapply(s,function(x){paste(x[1],sep="")})
ifelse(pop %in% "BROC","grey",ifelse(pop %in% "CROS","black",ifelse(pop %in% "GOLD","black",ifelse(pop %in% "GOPE","black",ifelse(pop %in% "JETB","black",ifelse(pop %in% "LCEM","black",ifelse (pop %in% "LCJY","black",ifelse(pop %in% "LCMC","black",ifelse(pop %in% "LCMY","black",ifelse(pop %in% "LCTF","black",ifelse(pop %in% "NATC","blue",ifelse(pop %in% "NONB","green",ifelse(pop %in% "YOSK","black",ifelse(pop %in% "PENC","black",ifelse(pop %in% "RJFC","red",ifelse(pop %in% "GGMI","yellowgreen",ifelse(pop %in% "CWLH", "khaki1", ifelse(pop %in% "RIRL", "tan",ifelse(pop %in% "AYCM","black",ifelse(pop %in% "GGSI","cornsilk",ifelse(pop %in% "GDN4","grey",ifelse(pop %in% "LCYN","blue",ifelse(pop %in% "SILK","black",ifelse(pop %in% "TCAB","pink",ifelse(pop %in% "TCAB_FM","black",ifelse (pop %in% "TCDQ","pink",ifelse(pop %in% "TCDQ_FM","black",ifelse(pop %in% "TCGZ","pink",ifelse(pop %in% "TCGZ_FM","black",ifelse(pop %in% "RLCC","orange",ifelse(pop %in% "DGLC", "orange", ifelse(pop %in% "DBLC", "khaki1", ifelse(pop %in% "SBFC", "orange", ifelse(pop %in% "WCBP", "orange",ifelse(pop %in% "TCSN","pink",ifelse(pop %in% "TIBC","pink",ifelse(pop %in% "XBBC","black",ifelse(pop %in% "WHLL","khaki1",ifelse(pop %in% "LCMY_N","blue",ifelse(pop %in% "KADK_R","black",ifelse(pop %in% "ANKL_R","yellowgreen",ifelse(pop %in% "IAFC_R","indianred4",ifelse(pop %in% "BRLC_R","grey",ifelse(pop %in% "PUNB_R","violetred4",ifelse(pop %in% "NICO_R","cyan","green")))))))))))))))))))))))))))))))))))))))))))))->popcol


ifelse(pop %in% "BROC",16,ifelse(pop %in% "CROS",1,ifelse(pop %in% "GOLD",1,ifelse(pop %in% "GOPE",1,ifelse(pop %in% "JETB",1,ifelse(pop %in% "LCEM",4,ifelse (pop %in% "LCJY",5,ifelse(pop %in% "LCMC",6,ifelse(pop %in% "LCMY",7,ifelse(pop %in% "LCTF",8,ifelse(pop %in% "NATC",16,ifelse(pop %in% "NONB",16,ifelse(pop %in% "YOSK",10,ifelse(pop %in% "PENC",1,ifelse(pop %in% "RJFC","16",ifelse(pop %in% "LCYN",16,ifelse(pop %in% "SILK",13,ifelse(pop %in% "TCAB",16,ifelse(pop %in% "TCAB_FM",2,ifelse(pop %in% "GGMI",16,ifelse(pop %in% "AYCM",12,ifelse(pop %in% "GGSI",16,ifelse(pop %in% "CWLH",16,ifelse(pop %in% "RIRL",16,ifelse(pop %in% "GDN4",16,ifelse (pop %in% "TCDQ",16,ifelse(pop %in% "TCDQ_FM",2,ifelse(pop %in% "TCGZ",16,ifelse(pop %in% "TCGZ_FM",2,ifelse(pop %in% "RLCC",16,ifelse(pop %in% "DGLC",16, ifelse(pop %in% "DBLC",16, ifelse(pop %in% "SBFC",16, ifelse(pop %in% "WCBP",16,ifelse(pop %in% "TCSN",16,ifelse(pop %in% "TIBC",16,ifelse(pop %in% "XBBC",3,ifelse(pop %in% "WHLL",16,ifelse(pop %in% "LCMY_N",16,ifelse(pop %in% "KADK_R","1",ifelse(pop %in% "ANKL_R","5",ifelse(pop %in% "IAFC_R","6",ifelse(pop %in% "BRLC_R","16",ifelse(pop %in% "PUNB_R","7",ifelse(pop %in% "NICO_R","8","0")))))))))))))))))))))))))))))))))))))))))))))->poppch

pop1<-as.data.frame(pop)
pop1$col<-popcol
pop1$pch<-poppch
unique(pop1,)->a
par(mar=c(5,5,1,12),mgp=c(2.7, 0.5, 0),xpd = T) 
plot(e$vectors[,1],e$vectors[,2],lwd=2,ylab=c(paste("PC2","(",evec[2],"%",")")),xlab=c(paste("PC1","(",evec[1],"%",")")),font=2,col=popcol,pch=as.numeric(pop1$pch),cex=2.7,cex.lab=1.7,cex.axis=1.3,font.lab=2)
#title(main=c(paste("PC1","(",evec[1],"%",")","/","PC2","(",evec[2],"%",")")),line=0.3 ,cex.main = 2 )
box(lwd=3)
#text(e$vectors[,1],e$vectors[,2],pop1$pop)
legend("topright",legend=c("Ayam Cemani", "Emei BBC", "Jiuyuan BBC", "Kadaknath", "Miyi BBC", "Muchuan BBC", "Silkie", "Tianfu BBC", "Tibetan BBC", "Xichuan BBC", "Yeonsan Ogye","Other commercial breeds","Gallus gallus murghi", "Gallus gallus spadiceus","Chinese native chicken", "Tibetan native chicken","Rhode Island red","White leghorn","Broiler","Indian village chicken","Red junglefowl","Ankaleshwar","Aseel","Punjab Brown","Nicobari"),col=c("black","black","black","black","black","black","black","black","black","black","black","orange","yellowgreen","cornsilk","blue","pink","tan","khaki1","grey","green","red","yellowgreen","indianred4","violetred4","cyan"),pch=c(12, 4, 5, 1, 7, 6, 13, 8, 2, 3, 10,16,16,16,16,16,16,16,16,16,16,5,6,7,8),cex=0.9,pt.cex=1.5,inset=c(-0.21,0.0))
dev.off()


tiff("PCA_DUP1_123_ind.tiff", width = 13, height = 12, units = 'in', res = 200)
C <- read.table(file="genolike_123_dup1.beagle.gz.cov.cov")
m<-as.matrix(C)
e <- eigen(m, symm=TRUE)
e$val <- e$val/sum(e$val)
cat(signif(e$val, digits=3)*100,"\n")
signif(e$val, digits=3)*100->evec
s<-strsplit(basename(scan("short.list",what="the")),"\\.")
pop<-sapply(s,function(x){paste(x[1],sep="")})
ifelse(pop %in% "BROC","grey",ifelse(pop %in% "CROS","black",ifelse(pop %in% "GOLD","black",ifelse(pop %in% "GOPE","black",ifelse(pop %in% "JETB","black",ifelse(pop %in% "LCEM","black",ifelse (pop %in% "LCJY","black",ifelse(pop %in% "LCMC","black",ifelse(pop %in% "LCMY","black",ifelse(pop %in% "LCTF","black",ifelse(pop %in% "NATC","blue",ifelse(pop %in% "NONB","green",ifelse(pop %in% "YOSK","black",ifelse(pop %in% "PENC","black",ifelse(pop %in% "RJFC","red",ifelse(pop %in% "GGMI","yellowgreen",ifelse(pop %in% "CWLH", "khaki1", ifelse(pop %in% "RIRL", "tan",ifelse(pop %in% "AYCM","black",ifelse(pop %in% "GGSI","cornsilk",ifelse(pop %in% "GDN4","grey",ifelse(pop %in% "LCYN","blue",ifelse(pop %in% "SILK","black",ifelse(pop %in% "TCAB","pink",ifelse(pop %in% "TCAB_FM","black",ifelse (pop %in% "TCDQ","pink",ifelse(pop %in% "TCDQ_FM","black",ifelse(pop %in% "TCGZ","pink",ifelse(pop %in% "TCGZ_FM","black",ifelse(pop %in% "RLCC","orange",ifelse(pop %in% "DGLC", "orange", ifelse(pop %in% "DBLC", "khaki1", ifelse(pop %in% "SBFC", "orange", ifelse(pop %in% "WCBP", "orange",ifelse(pop %in% "TCSN","pink",ifelse(pop %in% "TIBC","pink",ifelse(pop %in% "XBBC","black",ifelse(pop %in% "WHLL","khaki1",ifelse(pop %in% "LCMY_N","blue",ifelse(pop %in% "KADK_R","black",ifelse(pop %in% "ANKL_R","yellowgreen",ifelse(pop %in% "IAFC_R","indianred4",ifelse(pop %in% "BRLC_R","grey",ifelse(pop %in% "PUNB_R","violetred4",ifelse(pop %in% "NICO_R","cyan","green")))))))))))))))))))))))))))))))))))))))))))))->popcol


ifelse(pop %in% "BROC",16,ifelse(pop %in% "CROS",1,ifelse(pop %in% "GOLD",1,ifelse(pop %in% "GOPE",1,ifelse(pop %in% "JETB",1,ifelse(pop %in% "LCEM",4,ifelse (pop %in% "LCJY",5,ifelse(pop %in% "LCMC",6,ifelse(pop %in% "LCMY",7,ifelse(pop %in% "LCTF",8,ifelse(pop %in% "NATC",16,ifelse(pop %in% "NONB",16,ifelse(pop %in% "YOSK",10,ifelse(pop %in% "PENC",1,ifelse(pop %in% "RJFC","16",ifelse(pop %in% "LCYN",16,ifelse(pop %in% "SILK",13,ifelse(pop %in% "TCAB",16,ifelse(pop %in% "TCAB_FM",2,ifelse(pop %in% "GGMI",16,ifelse(pop %in% "AYCM",12,ifelse(pop %in% "GGSI",16,ifelse(pop %in% "CWLH",16,ifelse(pop %in% "RIRL",16,ifelse(pop %in% "GDN4",16,ifelse (pop %in% "TCDQ",16,ifelse(pop %in% "TCDQ_FM",2,ifelse(pop %in% "TCGZ",16,ifelse(pop %in% "TCGZ_FM",2,ifelse(pop %in% "RLCC",16,ifelse(pop %in% "DGLC",16, ifelse(pop %in% "DBLC",16, ifelse(pop %in% "SBFC",16, ifelse(pop %in% "WCBP",16,ifelse(pop %in% "TCSN",16,ifelse(pop %in% "TIBC",16,ifelse(pop %in% "XBBC",3,ifelse(pop %in% "WHLL",16,ifelse(pop %in% "LCMY_N",16,ifelse(pop %in% "KADK_R","1",ifelse(pop %in% "ANKL_R","5",ifelse(pop %in% "IAFC_R","6",ifelse(pop %in% "BRLC_R","16",ifelse(pop %in% "PUNB_R","7",ifelse(pop %in% "NICO_R","8","0")))))))))))))))))))))))))))))))))))))))))))))->poppch

pop1<-as.data.frame(pop)
pop1$col<-popcol
pop1$pch<-poppch
unique(pop1,)->a
par(mar=c(5,5,1,12),mgp=c(2.7, 0.5, 0),xpd = T) 
plot(e$vectors[,1],e$vectors[,2],lwd=2,ylab=c(paste("PC2","(",evec[2],"%",")")),xlab=c(paste("PC1","(",evec[1],"%",")")),font=2,col=popcol,pch=as.numeric(pop1$pch),cex=2.7,cex.lab=1.7,cex.axis=1.3,font.lab=2)
#title(main=c(paste("PC1","(",evec[1],"%",")","/","PC2","(",evec[2],"%",")")),line=0.3 ,cex.main = 2 )
box(lwd=3)
#text(e$vectors[,1],e$vectors[,2],pop1$pop)
legend("topright",legend=c("Ayam Cemani", "Emei BBC", "Jiuyuan BBC", "Kadaknath", "Miyi BBC", "Muchuan BBC", "Silkie", "Tianfu BBC", "Tibetan BBC", "Xichuan BBC", "Yeonsan Ogye","Other commercial breeds","Gallus gallus murghi", "Gallus gallus spadiceus","Chinese native chicken", "Tibetan native chicken","Rhode Island red","White leghorn","Broiler","Indian village chicken","Red junglefowl","Ankaleshwar","Aseel","Punjab Brown","Nicobari"),col=c("black","black","black","black","black","black","black","black","black","black","black","orange","yellowgreen","cornsilk","blue","pink","tan","khaki1","grey","green","red","yellowgreen","indianred4","violetred4","cyan"),pch=c(12, 4, 5, 1, 7, 6, 13, 8, 2, 3, 10,16,16,16,16,16,16,16,16,16,16,5,6,7,8),cex=0.9,pt.cex=1.5,inset=c(-0.21,0.0))
dev.off()



tiff("PCA_INT_123_ind.tiff", width = 13, height = 12, units = 'in', res = 200)
C <- read.table(file="genolike_123_int.beagle.gz.cov.cov")
m<-as.matrix(C)
e <- eigen(m, symm=TRUE)
e$val <- e$val/sum(e$val)
cat(signif(e$val, digits=3)*100,"\n")
signif(e$val, digits=3)*100->evec
s<-strsplit(basename(scan("short.list",what="the")),"\\.")
pop<-sapply(s,function(x){paste(x[1],sep="")})
ifelse(pop %in% "BROC","grey",ifelse(pop %in% "CROS","black",ifelse(pop %in% "GOLD","black",ifelse(pop %in% "GOPE","black",ifelse(pop %in% "JETB","black",ifelse(pop %in% "LCEM","black",ifelse (pop %in% "LCJY","black",ifelse(pop %in% "LCMC","black",ifelse(pop %in% "LCMY","black",ifelse(pop %in% "LCTF","black",ifelse(pop %in% "NATC","blue",ifelse(pop %in% "NONB","green",ifelse(pop %in% "YOSK","black",ifelse(pop %in% "PENC","black",ifelse(pop %in% "RJFC","red",ifelse(pop %in% "GGMI","yellowgreen",ifelse(pop %in% "CWLH", "khaki1", ifelse(pop %in% "RIRL", "tan",ifelse(pop %in% "AYCM","black",ifelse(pop %in% "GGSI","cornsilk",ifelse(pop %in% "GDN4","grey",ifelse(pop %in% "LCYN","blue",ifelse(pop %in% "SILK","black",ifelse(pop %in% "TCAB","pink",ifelse(pop %in% "TCAB_FM","black",ifelse (pop %in% "TCDQ","pink",ifelse(pop %in% "TCDQ_FM","black",ifelse(pop %in% "TCGZ","pink",ifelse(pop %in% "TCGZ_FM","black",ifelse(pop %in% "RLCC","orange",ifelse(pop %in% "DGLC", "orange", ifelse(pop %in% "DBLC", "khaki1", ifelse(pop %in% "SBFC", "orange", ifelse(pop %in% "WCBP", "orange",ifelse(pop %in% "TCSN","pink",ifelse(pop %in% "TIBC","pink",ifelse(pop %in% "XBBC","black",ifelse(pop %in% "WHLL","khaki1",ifelse(pop %in% "LCMY_N","blue",ifelse(pop %in% "KADK_R","black",ifelse(pop %in% "ANKL_R","yellowgreen",ifelse(pop %in% "IAFC_R","indianred4",ifelse(pop %in% "BRLC_R","grey",ifelse(pop %in% "PUNB_R","violetred4",ifelse(pop %in% "NICO_R","cyan","green")))))))))))))))))))))))))))))))))))))))))))))->popcol


ifelse(pop %in% "BROC",16,ifelse(pop %in% "CROS",1,ifelse(pop %in% "GOLD",1,ifelse(pop %in% "GOPE",1,ifelse(pop %in% "JETB",1,ifelse(pop %in% "LCEM",4,ifelse (pop %in% "LCJY",5,ifelse(pop %in% "LCMC",6,ifelse(pop %in% "LCMY",7,ifelse(pop %in% "LCTF",8,ifelse(pop %in% "NATC",16,ifelse(pop %in% "NONB",16,ifelse(pop %in% "YOSK",10,ifelse(pop %in% "PENC",1,ifelse(pop %in% "RJFC","16",ifelse(pop %in% "LCYN",16,ifelse(pop %in% "SILK",13,ifelse(pop %in% "TCAB",16,ifelse(pop %in% "TCAB_FM",2,ifelse(pop %in% "GGMI",16,ifelse(pop %in% "AYCM",12,ifelse(pop %in% "GGSI",16,ifelse(pop %in% "CWLH",16,ifelse(pop %in% "RIRL",16,ifelse(pop %in% "GDN4",16,ifelse (pop %in% "TCDQ",16,ifelse(pop %in% "TCDQ_FM",2,ifelse(pop %in% "TCGZ",16,ifelse(pop %in% "TCGZ_FM",2,ifelse(pop %in% "RLCC",16,ifelse(pop %in% "DGLC",16, ifelse(pop %in% "DBLC",16, ifelse(pop %in% "SBFC",16, ifelse(pop %in% "WCBP",16,ifelse(pop %in% "TCSN",16,ifelse(pop %in% "TIBC",16,ifelse(pop %in% "XBBC",3,ifelse(pop %in% "WHLL",16,ifelse(pop %in% "LCMY_N",16,ifelse(pop %in% "KADK_R","1",ifelse(pop %in% "ANKL_R","5",ifelse(pop %in% "IAFC_R","6",ifelse(pop %in% "BRLC_R","16",ifelse(pop %in% "PUNB_R","7",ifelse(pop %in% "NICO_R","8","0")))))))))))))))))))))))))))))))))))))))))))))->poppch

pop1<-as.data.frame(pop)
pop1$col<-popcol
pop1$pch<-poppch
unique(pop1,)->a
par(mar=c(5,5,1,12),mgp=c(2.7, 0.5, 0),xpd = T) 
plot(e$vectors[,1],e$vectors[,2],lwd=2,ylab=c(paste("PC2","(",evec[2],"%",")")),xlab=c(paste("PC1","(",evec[1],"%",")")),font=2,col=popcol,pch=as.numeric(pop1$pch),cex=2.7,cex.lab=1.7,cex.axis=1.3,font.lab=2)
#title(main=c(paste("PC1","(",evec[1],"%",")","/","PC2","(",evec[2],"%",")")),line=0.3 ,cex.main = 2 )
box(lwd=3)
#text(e$vectors[,1],e$vectors[,2],pop1$pop)
legend("topright",legend=c("Ayam Cemani", "Emei BBC", "Jiuyuan BBC", "Kadaknath", "Miyi BBC", "Muchuan BBC", "Silkie", "Tianfu BBC", "Tibetan BBC", "Xichuan BBC", "Yeonsan Ogye","Other commercial breeds","Gallus gallus murghi", "Gallus gallus spadiceus","Chinese native chicken", "Tibetan native chicken","Rhode Island red","White leghorn","Broiler","Indian village chicken","Red junglefowl","Ankaleshwar","Aseel","Punjab Brown","Nicobari"),col=c("black","black","black","black","black","black","black","black","black","black","black","orange","yellowgreen","cornsilk","blue","pink","tan","khaki1","grey","green","red","yellowgreen","indianred4","violetred4","cyan"),pch=c(12, 4, 5, 1, 7, 6, 13, 8, 2, 3, 10,16,16,16,16,16,16,16,16,16,16,5,6,7,8),cex=0.9,pt.cex=1.5,inset=c(-0.21,0.0))
dev.off()


tiff("PCA_DUP2_123_ind.tiff", width = 13, height = 12, units = 'in', res = 200)
C <- read.table(file="genolike_123_dup2.beagle.gz.cov.cov")
m<-as.matrix(C)
e <- eigen(m, symm=TRUE)
e$val <- e$val/sum(e$val)
cat(signif(e$val, digits=3)*100,"\n")
signif(e$val, digits=3)*100->evec
s<-strsplit(basename(scan("short.list",what="the")),"\\.")
pop<-sapply(s,function(x){paste(x[1],sep="")})
ifelse(pop %in% "BROC","grey",ifelse(pop %in% "CROS","black",ifelse(pop %in% "GOLD","black",ifelse(pop %in% "GOPE","black",ifelse(pop %in% "JETB","black",ifelse(pop %in% "LCEM","black",ifelse (pop %in% "LCJY","black",ifelse(pop %in% "LCMC","black",ifelse(pop %in% "LCMY","black",ifelse(pop %in% "LCTF","black",ifelse(pop %in% "NATC","blue",ifelse(pop %in% "NONB","green",ifelse(pop %in% "YOSK","black",ifelse(pop %in% "PENC","black",ifelse(pop %in% "RJFC","red",ifelse(pop %in% "GGMI","yellowgreen",ifelse(pop %in% "CWLH", "khaki1", ifelse(pop %in% "RIRL", "tan",ifelse(pop %in% "AYCM","black",ifelse(pop %in% "GGSI","cornsilk",ifelse(pop %in% "GDN4","grey",ifelse(pop %in% "LCYN","blue",ifelse(pop %in% "SILK","black",ifelse(pop %in% "TCAB","pink",ifelse(pop %in% "TCAB_FM","black",ifelse (pop %in% "TCDQ","pink",ifelse(pop %in% "TCDQ_FM","black",ifelse(pop %in% "TCGZ","pink",ifelse(pop %in% "TCGZ_FM","black",ifelse(pop %in% "RLCC","orange",ifelse(pop %in% "DGLC", "orange", ifelse(pop %in% "DBLC", "khaki1", ifelse(pop %in% "SBFC", "orange", ifelse(pop %in% "WCBP", "orange",ifelse(pop %in% "TCSN","pink",ifelse(pop %in% "TIBC","pink",ifelse(pop %in% "XBBC","black",ifelse(pop %in% "WHLL","khaki1",ifelse(pop %in% "LCMY_N","blue",ifelse(pop %in% "KADK_R","black",ifelse(pop %in% "ANKL_R","yellowgreen",ifelse(pop %in% "IAFC_R","indianred4",ifelse(pop %in% "BRLC_R","grey",ifelse(pop %in% "PUNB_R","violetred4",ifelse(pop %in% "NICO_R","cyan","green")))))))))))))))))))))))))))))))))))))))))))))->popcol


ifelse(pop %in% "BROC",16,ifelse(pop %in% "CROS",1,ifelse(pop %in% "GOLD",1,ifelse(pop %in% "GOPE",1,ifelse(pop %in% "JETB",1,ifelse(pop %in% "LCEM",4,ifelse (pop %in% "LCJY",5,ifelse(pop %in% "LCMC",6,ifelse(pop %in% "LCMY",7,ifelse(pop %in% "LCTF",8,ifelse(pop %in% "NATC",16,ifelse(pop %in% "NONB",16,ifelse(pop %in% "YOSK",10,ifelse(pop %in% "PENC",1,ifelse(pop %in% "RJFC","16",ifelse(pop %in% "LCYN",16,ifelse(pop %in% "SILK",13,ifelse(pop %in% "TCAB",16,ifelse(pop %in% "TCAB_FM",2,ifelse(pop %in% "GGMI",16,ifelse(pop %in% "AYCM",12,ifelse(pop %in% "GGSI",16,ifelse(pop %in% "CWLH",16,ifelse(pop %in% "RIRL",16,ifelse(pop %in% "GDN4",16,ifelse (pop %in% "TCDQ",16,ifelse(pop %in% "TCDQ_FM",2,ifelse(pop %in% "TCGZ",16,ifelse(pop %in% "TCGZ_FM",2,ifelse(pop %in% "RLCC",16,ifelse(pop %in% "DGLC",16, ifelse(pop %in% "DBLC",16, ifelse(pop %in% "SBFC",16, ifelse(pop %in% "WCBP",16,ifelse(pop %in% "TCSN",16,ifelse(pop %in% "TIBC",16,ifelse(pop %in% "XBBC",3,ifelse(pop %in% "WHLL",16,ifelse(pop %in% "LCMY_N",16,ifelse(pop %in% "KADK_R","1",ifelse(pop %in% "ANKL_R","5",ifelse(pop %in% "IAFC_R","6",ifelse(pop %in% "BRLC_R","16",ifelse(pop %in% "PUNB_R","7",ifelse(pop %in% "NICO_R","8","0")))))))))))))))))))))))))))))))))))))))))))))->poppch

pop1<-as.data.frame(pop)
pop1$col<-popcol
pop1$pch<-poppch
unique(pop1,)->a
par(mar=c(5,5,1,12),mgp=c(2.7, 0.5, 0),xpd = T) 
plot(e$vectors[,1],e$vectors[,2],lwd=2,ylab=c(paste("PC2","(",evec[2],"%",")")),xlab=c(paste("PC1","(",evec[1],"%",")")),font=2,col=popcol,pch=as.numeric(pop1$pch),cex=2.7,cex.lab=1.7,cex.axis=1.3,font.lab=2)
#title(main=c(paste("PC1","(",evec[1],"%",")","/","PC2","(",evec[2],"%",")")),line=0.3 ,cex.main = 2 )
box(lwd=3)
#text(e$vectors[,1],e$vectors[,2],pop1$pop)
legend("topright",legend=c("Ayam Cemani", "Emei BBC", "Jiuyuan BBC", "Kadaknath", "Miyi BBC", "Muchuan BBC", "Silkie", "Tianfu BBC", "Tibetan BBC", "Xichuan BBC", "Yeonsan Ogye","Other commercial breeds","Gallus gallus murghi", "Gallus gallus spadiceus","Chinese native chicken", "Tibetan native chicken","Rhode Island red","White leghorn","Broiler","Indian village chicken","Red junglefowl","Ankaleshwar","Aseel","Punjab Brown","Nicobari"),col=c("black","black","black","black","black","black","black","black","black","black","black","orange","yellowgreen","cornsilk","blue","pink","tan","khaki1","grey","green","red","yellowgreen","indianred4","violetred4","cyan"),pch=c(12, 4, 5, 1, 7, 6, 13, 8, 2, 3, 10,16,16,16,16,16,16,16,16,16,16,5,6,7,8),cex=0.9,pt.cex=1.5,inset=c(-0.21,0.0))
dev.off()

tiff("PCA_FLANK2_123_ind.tiff", width = 13, height = 12, units = 'in', res = 200)
C <- read.table(file="genolike_123_flank2.beagle.gz.cov.cov")
m<-as.matrix(C)
e <- eigen(m, symm=TRUE)
e$val <- e$val/sum(e$val)
cat(signif(e$val, digits=3)*100,"\n")
signif(e$val, digits=3)*100->evec
s<-strsplit(basename(scan("short.list",what="the")),"\\.")
pop<-sapply(s,function(x){paste(x[1],sep="")})
ifelse(pop %in% "BROC","grey",ifelse(pop %in% "CROS","black",ifelse(pop %in% "GOLD","black",ifelse(pop %in% "GOPE","black",ifelse(pop %in% "JETB","black",ifelse(pop %in% "LCEM","black",ifelse (pop %in% "LCJY","black",ifelse(pop %in% "LCMC","black",ifelse(pop %in% "LCMY","black",ifelse(pop %in% "LCTF","black",ifelse(pop %in% "NATC","blue",ifelse(pop %in% "NONB","green",ifelse(pop %in% "YOSK","black",ifelse(pop %in% "PENC","black",ifelse(pop %in% "RJFC","red",ifelse(pop %in% "GGMI","yellowgreen",ifelse(pop %in% "CWLH", "khaki1", ifelse(pop %in% "RIRL", "tan",ifelse(pop %in% "AYCM","black",ifelse(pop %in% "GGSI","cornsilk",ifelse(pop %in% "GDN4","grey",ifelse(pop %in% "LCYN","blue",ifelse(pop %in% "SILK","black",ifelse(pop %in% "TCAB","pink",ifelse(pop %in% "TCAB_FM","black",ifelse (pop %in% "TCDQ","pink",ifelse(pop %in% "TCDQ_FM","black",ifelse(pop %in% "TCGZ","pink",ifelse(pop %in% "TCGZ_FM","black",ifelse(pop %in% "RLCC","orange",ifelse(pop %in% "DGLC", "orange", ifelse(pop %in% "DBLC", "khaki1", ifelse(pop %in% "SBFC", "orange", ifelse(pop %in% "WCBP", "orange",ifelse(pop %in% "TCSN","pink",ifelse(pop %in% "TIBC","pink",ifelse(pop %in% "XBBC","black",ifelse(pop %in% "WHLL","khaki1",ifelse(pop %in% "LCMY_N","blue",ifelse(pop %in% "KADK_R","black",ifelse(pop %in% "ANKL_R","yellowgreen",ifelse(pop %in% "IAFC_R","indianred4",ifelse(pop %in% "BRLC_R","grey",ifelse(pop %in% "PUNB_R","violetred4",ifelse(pop %in% "NICO_R","cyan","green")))))))))))))))))))))))))))))))))))))))))))))->popcol


ifelse(pop %in% "BROC",16,ifelse(pop %in% "CROS",1,ifelse(pop %in% "GOLD",1,ifelse(pop %in% "GOPE",1,ifelse(pop %in% "JETB",1,ifelse(pop %in% "LCEM",4,ifelse (pop %in% "LCJY",5,ifelse(pop %in% "LCMC",6,ifelse(pop %in% "LCMY",7,ifelse(pop %in% "LCTF",8,ifelse(pop %in% "NATC",16,ifelse(pop %in% "NONB",16,ifelse(pop %in% "YOSK",10,ifelse(pop %in% "PENC",1,ifelse(pop %in% "RJFC","16",ifelse(pop %in% "LCYN",16,ifelse(pop %in% "SILK",13,ifelse(pop %in% "TCAB",16,ifelse(pop %in% "TCAB_FM",2,ifelse(pop %in% "GGMI",16,ifelse(pop %in% "AYCM",12,ifelse(pop %in% "GGSI",16,ifelse(pop %in% "CWLH",16,ifelse(pop %in% "RIRL",16,ifelse(pop %in% "GDN4",16,ifelse (pop %in% "TCDQ",16,ifelse(pop %in% "TCDQ_FM",2,ifelse(pop %in% "TCGZ",16,ifelse(pop %in% "TCGZ_FM",2,ifelse(pop %in% "RLCC",16,ifelse(pop %in% "DGLC",16, ifelse(pop %in% "DBLC",16, ifelse(pop %in% "SBFC",16, ifelse(pop %in% "WCBP",16,ifelse(pop %in% "TCSN",16,ifelse(pop %in% "TIBC",16,ifelse(pop %in% "XBBC",3,ifelse(pop %in% "WHLL",16,ifelse(pop %in% "LCMY_N",16,ifelse(pop %in% "KADK_R","1",ifelse(pop %in% "ANKL_R","5",ifelse(pop %in% "IAFC_R","6",ifelse(pop %in% "BRLC_R","16",ifelse(pop %in% "PUNB_R","7",ifelse(pop %in% "NICO_R","8","0")))))))))))))))))))))))))))))))))))))))))))))->poppch

pop1<-as.data.frame(pop)
pop1$col<-popcol
pop1$pch<-poppch
unique(pop1,)->a
par(mar=c(5,5,1,12),mgp=c(2.7, 0.5, 0),xpd = T) 
plot(e$vectors[,1],e$vectors[,2],lwd=2,ylab=c(paste("PC2","(",evec[2],"%",")")),xlab=c(paste("PC1","(",evec[1],"%",")")),font=2,col=popcol,pch=as.numeric(pop1$pch),cex=2.7,cex.lab=1.7,cex.axis=1.3,font.lab=2)
#title(main=c(paste("PC1","(",evec[1],"%",")","/","PC2","(",evec[2],"%",")")),line=0.3 ,cex.main = 2 )
box(lwd=3)
#text(e$vectors[,1],e$vectors[,2],pop1$pop)
legend("topright",legend=c("Ayam Cemani", "Emei BBC", "Jiuyuan BBC", "Kadaknath", "Miyi BBC", "Muchuan BBC", "Silkie", "Tianfu BBC", "Tibetan BBC", "Xichuan BBC", "Yeonsan Ogye","Other commercial breeds","Gallus gallus murghi", "Gallus gallus spadiceus","Chinese native chicken", "Tibetan native chicken","Rhode Island red","White leghorn","Broiler","Indian village chicken","Red junglefowl","Ankaleshwar","Aseel","Punjab Brown","Nicobari"),col=c("black","black","black","black","black","black","black","black","black","black","black","orange","yellowgreen","cornsilk","blue","pink","tan","khaki1","grey","green","red","yellowgreen","indianred4","violetred4","cyan"),pch=c(12, 4, 5, 1, 7, 6, 13, 8, 2, 3, 10,16,16,16,16,16,16,16,16,16,16,5,6,7,8),cex=0.9,pt.cex=1.5,inset=c(-0.21,0.0))
dev.off()


