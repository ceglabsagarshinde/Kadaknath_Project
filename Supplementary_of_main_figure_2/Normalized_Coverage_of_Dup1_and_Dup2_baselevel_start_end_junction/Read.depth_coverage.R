pos1<-10766772
pos2<-10766771
read.table(file="dup1_5p.txt",header=FALSE)->M
for (i in unique(M$V1)) {
M$V6[M$V1==i]/mean(M$V6[M$V1==i])->M$V15[M$V1==i]
M$V15[M$V1==i & M$V4==pos1]-M$V15[M$V1==i & M$V4==pos2]->diffval
X<-data.frame(Ind=i,Diff=diffval)
write.table(file="dup1_5p_covDiff.txt",X,col.names=FALSE,row.names=FALSE,quote=FALSE,sep="\t",append=TRUE)
}


pos1<-11306686  
pos2<-11306685
read.table(file="dup2_5p.txt",header=FALSE)->M
for (i in unique(M$V1)) {
M$V6[M$V1==i]/mean(M$V6[M$V1==i])->M$V15[M$V1==i]
M$V15[M$V1==i & M$V4==pos1]-M$V15[M$V1==i & M$V4==pos2]->diffval
X<-data.frame(Ind=i,Diff=diffval)
write.table(file="dup2_5p_covDiff.txt",X,col.names=FALSE,row.names=FALSE,quote=FALSE,sep="\t",append=TRUE)
}


pos1<-10894151
pos2<-10894152
read.table(file="dup1_3p.txt",header=FALSE)->M
for (i in unique(M$V1)) {
M$V6[M$V1==i]/mean(M$V6[M$V1==i])->M$V15[M$V1==i]
M$V15[M$V1==i & M$V4==pos1]-M$V15[M$V1==i & M$V4==pos2]->diffval
X<-data.frame(Ind=i,Diff=diffval)
write.table(file="dup1_3p_covDiff.txt",X,col.names=FALSE,row.names=FALSE,quote=FALSE,sep="\t",append=TRUE)
}


pos1<-11477501
pos2<-11477502
read.table(file="dup2_3p.txt",header=FALSE)->M
for (i in unique(M$V1)) {
M$V6[M$V1==i]/mean(M$V6[M$V1==i])->M$V15[M$V1==i]
M$V15[M$V1==i & M$V4==pos1]-M$V15[M$V1==i & M$V4==pos2]->diffval
X<-data.frame(Ind=i,Diff=diffval)
write.table(file="dup2_3p_covDiff.txt",X,col.names=FALSE,row.names=FALSE,quote=FALSE,sep="\t",append=TRUE)
}

