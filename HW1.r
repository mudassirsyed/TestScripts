#below are two ways to get random numbers from uniform distribution. runif for sure 
# I think sample is also uniform 
myvector = floor(runif(16,min=1,max=11))
#sample(1:100,3,replace=T)
B = matrix(myvector,nrow=4,ncol=4)
#B
# a matrix with all 1s
unitmat = matrix(rep(4,each=16),nrow=4,ncol=4)
#identitiy matrix 
idmat=diag(4)
B = B + idmat
cat("Here is the matrix B")
B
det(B)
BINV = solve(B)
BINV
#problem 1 , first bullet.
idmat = round(BINV %*% B,2)

###eigen values
Bigen = eigen(B)
Bigen$values
BINVigen = eigen(BINV,only.values = TRUE)
BINVigen$values
#### transpose 
tranInv = eigen(t(B),only.values = TRUE)
tranInv$values
#### b multiplied by eigen vector
Bigen$values[1]
Bigen$vectors[,1]
side1=round(c(B%*%Bigen$vectors[,1]),5)

side2 = round(Bigen$vectors[,1]* Bigen$values[1],5)
side1==side2
side1
side2
all(side1==side2)
cat("--------------------------")
