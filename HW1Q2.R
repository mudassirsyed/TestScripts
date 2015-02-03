#list of x1s 
x1 = seq.int(0.5,10,0.5)
#calculate x2
x2=2.3*x1-1.2
x2
#plot them to see linear relationship
#par(pty = "s")
#plot(x1,x2,xlim=c(-10,10),ylim=c(-10,10))
#plot(x1,x2)
#add normal noise 
x2=x2+rnorm(20)
x2


#plot it again, should be bumpy
plot(x1,x2)
reg2=lm(x2~x1)
abline(reg2)
##end of q2 above
#var(x1)
#var(x2)
#cov(x1,x2)
### hopefully ok. covariance matrix.
covMatrix = cov(cbind(x1,x2))
covMatrix

## eigen vectors of the covariance 
covEigen=eigen(covMatrix)

v1 = covEigen$vectors[,1]
v2 = covEigen$vectors[,2]
covEigen$vectors[1,1]
covEigen$vectors[2,1]
x1[10]
#arrows(x0=0,y0=0,x1=covEigen$vectors[1,1],y1=covEigen$vectors[2,1],col=2)
#arrows(x0=x1[10],y0=x2[10],x1=covEigen$vectors[1,2],y1=covEigen$vectors[2,2],col=3)
arrows(x0=0,x1=v1[1],y=0,y1=v1[2])
arrows(x0=5,x1=v1[1]+5,y=5,y1=v1[2]+5)
arrows(x0=5,x1=v2[1]+5,y=5,y1=v2[2]+5)
v1
v2
arrows(x0=mean(x1),y0=mean(x2),x1=v1[1],y1=v1[2])
arrows(x0=mean(x1),y0=mean(x2),x1=v2[1],y1=v2[2],col=2)
