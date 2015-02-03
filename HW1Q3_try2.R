x1=c(seq.int(0.5,10,0.5))
x2=2.3*x1-1.2
x1
x2
x2=round(x2+rnorm(20),2)
x2
dat = cbind(x1,x2)
plot(dat)
covMatrix=cov(dat)
covMatrix
eigen(covMatrix)
colMeans(dat)
e1 = eigen(covMatrix)$vectors[,1]
e2 = eigen(covMatrix)$vectors[,2]
e1
e2
arrows(x0=colMeans(dat)[1],y0 = colMeans(dat)[2],x1=e1[1],y1=e1[2])
arrows(x0=colMeans(dat)[1],y0 = colMeans(dat)[2],x1=e2[1],y1=e2[2])

##########
# a square plot with fixed aix limits . it does look perpendicular. 
## how do I make it more obvious ?? 
w1 = seq.int(-1,1,0.1)
w2 = 2.3*w1-1.2
#w2=w1
#plot them to see linear relationship
par(pty = "s")
plot(w1,w2,xlim=c(-1,1),ylim=c(-1,1))
arrows(x0=0,y0=0,x1=e1[1],y1=e1[2])
arrows(x0=0,y0=0,x1=e2[1],y1=e2[2])
eigen(covMatrix)$vectors

e11=e1*eigen(covMatrix)$values[1]
