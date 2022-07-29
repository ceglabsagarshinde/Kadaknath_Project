## Isolation by distance(IBD) calculation using Geographical cordinates of 6 population and pairwise mean Fst from popgenwindow.
library(sp)
library(reshape)
library("ecodist")
someCoords <- data.frame(long=c(111,103,101,99,127,77), lat=c(32,29,26,27,35,23))
## Geographical cordinates of 6 population in respective order (XBBC,LCEM,LCMY,TBTC,YOSK,JETB)
apply(someCoords, 1, function(eachPoint) spDistsN1(as.matrix(someCoords), eachPoint, longlat=TRUE))->X
X[upper.tri(X)]->G
pop1<-c("XBBC","XBBC","LCEM","XBBC","LCEM","LCMY","XBBC","LCEM","LCMY","TBTC","XBBC","LCEM","LCMY","TBTC","YOSK")
pop2<-c("LCEM","LCMY","LCMY","TBTC","TBTC","TBTC","YOSK","YOSK","YOSK","YOSK","JETB","JETB","JETB","JETB","JETB")
data.frame(pop1,pop2,G)->Geodist

Geodist2 <- with(Geodist, G)
nams <- with(Geodist, unique(c(as.character(pop1), as.character(pop2))))
class(Geodist2) <- "dist"
read.table(file="6pop_popgenwindow.fst",header=TRUE,sep="\t")->M
na.omit(melt(M))->N
data.frame(pop1,pop2,N$value)->Gendist
Gendist2 <- with(Gendist, N$value)
nams <- with(Gendist, unique(c(as.character(pop1), as.character(pop2))))
attributes(Gendist2) <- with(Gendist, list(Size = length(nams),Labels = nams,Diag = FALSE,Upper = FALSE,method = "user"))
class(Gendist2) <- "dist"
mantel(Geodist2 ~ Gendist2, nperm=10000)

tiff("6pop_popgenwindow.tif",width = 10, height = 9, units = 'in', res = 300)
plot(G,N$value/(1-N$value),xlab=expression(bold("Distance in Km")),ylab=expression(paste(bold("F"[ST]*"/(1-F"[ST]*") from Autosomes"))),main="Isolation by Distance Pattern",col="blue",xlim=c(-100,6000),cex=1,pch=16)
text(G,N$value/(1-N$value),labels=paste(pop1,"  ",pop2),cex=0.7)
lm(N$value/(1-N$value)~G)->a
abline(a)
dev.off()

cor.test(N$value/(1-N$value),G)
cor.test(N$value/(1-N$value),G,method="kendall")

## Isolation by distance(IBD) calculation using Geographical cordinates of 6 population and pairwise mean Fst from ANGSD.
library(sp)
library(reshape)
library("ecodist")
someCoords <- data.frame(long=c(111,103,101,99,127,77), lat=c(32,29,26,27,35,23))
## Geographical cordinates of 6 population in respective order (XBBC,LCEM,LCMY,TBTC,YOSK,JETB)
apply(someCoords, 1, function(eachPoint) spDistsN1(as.matrix(someCoords), eachPoint, longlat=TRUE))->X
X[upper.tri(X)]->G
pop1<-c("XBBC","XBBC","LCEM","XBBC","LCEM","LCMY","XBBC","LCEM","LCMY","TBTC","XBBC","LCEM","LCMY","TBTC","YOSK")
pop2<-c("LCEM","LCMY","LCMY","TBTC","TBTC","TBTC","YOSK","YOSK","YOSK","YOSK","JETB","JETB","JETB","JETB","JETB")
data.frame(pop1,pop2,G)->Geodist

Geodist2 <- with(Geodist, G)
nams <- with(Geodist, unique(c(as.character(pop1), as.character(pop2))))
class(Geodist2) <- "dist"
read.table(file="6pop_angsd.fst",header=TRUE,sep="\t")->M
na.omit(melt(M))->N
data.frame(pop1,pop2,N$value)->Gendist
Gendist2 <- with(Gendist, N$value)
nams <- with(Gendist, unique(c(as.character(pop1), as.character(pop2))))
attributes(Gendist2) <- with(Gendist, list(Size = length(nams),Labels = nams,Diag = FALSE,Upper = FALSE,method = "user"))
class(Gendist2) <- "dist"
mantel(Geodist2 ~ Gendist2, nperm=10000)

tiff("6pop_angsd.tif",width = 10, height = 9, units = 'in', res = 300)
plot(G,N$value/(1-N$value),xlab=expression(bold("Distance in Km")),ylab=expression(paste(bold("F"[ST]*"/(1-F"[ST]*") from Autosomes"))),main="Isolation by Distance Pattern",col="blue",xlim=c(-100,6000),cex=1,pch=16)
text(G,N$value/(1-N$value),labels=paste(pop1,"  ",pop2),cex=0.7)
lm(N$value/(1-N$value)~G)->a
abline(a)
dev.off()

cor.test(N$value/(1-N$value),G)
cor.test(N$value/(1-N$value),G,method="kendall")

