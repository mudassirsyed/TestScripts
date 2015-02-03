
x1=c(seq.int(0.5,10,0.5))
x2=2.3*x1-1.2

x2=round(x2+rnorm(20),2)
x1 = x1 - mean(x1)
x2 = x2 - mean(x2)
dat = cbind(x1,x2)
par(pty = "s")
plot(dat,xlim=c(-15,15),ylim=c(-15,15))
reg2=lm(x2~x1)
abline(reg2)
covMatrix=cov(dat)
covMatrix
eigen(covMatrix)
mms = colMeans(dat)
e1 = eigen(covMatrix)$vectors[,1]
e2 = eigen(covMatrix)$vectors[,2]
vals = eigen(covMatrix)$values
vals
bigE1 = e1*10
bigE2 = e2*4
arrows(x0=mms[1],y0=mms[2],x1=bigE2[1]+mms[1],y1=bigE2[2]+mms[2],col=3)
arrows(x0=mms[1],y0=mms[2],x1=bigE1[1]+mms[1],y1=bigE1[2]+mms[2],col=2,lwd=2)
