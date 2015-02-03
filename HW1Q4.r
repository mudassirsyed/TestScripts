getwd()
smokers=read.delim("/home/msyed/big_data/Smokers.txt",header=TRUE,sep='\t')
class(smokers)
mode(smokers)
str(smokers)
dim(smokers)
rownames(smokers)
## step c 
labels(smokers)
## d .. do this for each column
smokers$Country
##e 
smokers$GDPPerCapita = as.numeric(gsub(",","",smokers$GDPPerCapita))
smokers$GDPPerCapita
str(smokers)
droplevels(smokers)
#ff
smokers["PercentSmokes"]
smokers["GDPPerCapita"]
##g
plot(smokers$PercentSmokes,smokers$GDPPerCapita)
max(smokers$GDPPerCapita)
##h
parts = c(0,2000,3000,5000,10000,50000)
hist(smokers$GDPPerCapita,breaks = parts )
##trying out i 
factorx <- factor(cut(smokers$GDPPerCapita, breaks=parts))
#Tabulate and turn into data.frame
xout <- as.data.frame(table(factorx))
xout
pie(xout$Freq,labels=xout$factorx)
