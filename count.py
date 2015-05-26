##Does not account for apostpoes I'm  etc
## Does not account for 
from collections import Counter
import re

def map(key,line):
    pattern = re.compile("[a-zA-Z][a-zA-Z0-9]*")
    wordsinline =[]
    for word in pattern.findall(line):
        #print word
        wordsinline.append({word:1})
    return wordsinline
         
def combiner(wordlist):
    X=Counter()
    for a in wordlist:
        X.update(a)
    return X

def reduce(clist):
    result=Counter()
    for c in clist:
        result.update(c)
    return result
    
    
filename = 'test.txt'
textf = open(filename,'r')

megaC=[]
for line in textf:
        wws = map(1,line)
        megaC.append(combiner(wws))

ff= reduce(megaC)

for key,value in ff.items():
    print key,value
        
        #kk = sum(wws.values())
        #print kk
##this will be reduce
#for k,v in wordcount.items():
#    print k,sum(v)
textf.close()
    
################################
##call mapper with a line ' here a is a cat' 
## it returns with 
