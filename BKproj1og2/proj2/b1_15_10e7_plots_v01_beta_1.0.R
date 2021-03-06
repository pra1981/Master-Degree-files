#beta is 0.87
funValues_k1=matrix(NA,runsG1+1,4)

funValues_k1[,1]=colSums(b3a0mc)/(rows1*cols1)
funValues_k1[,2]=colSums(b3a1mc)/(rows1*cols1)
funValues_k1[,3]=colSums(b3ar1mc)/(rows1*cols1)
#funValues_k1[,4]=colSums(b3ar2mc)/(rows1*cols1)
funValues_k1[,4]=colSums(b3ac1mc)/(rows1*cols1)

#Plot before
truncate1_k1=500
tx1_k1=1:(truncate1_k1)
truncfun3_k1=funValues_k1[tx1_k1,]

plot(x =tx1_k1,y=truncfun3_k1[,1],type='l',col='red',xlim=c(0,truncate1_k1),ylim=c(0,1),xlab='State number',ylab='Proportion of ones')
lines(x=tx1_k1,y=truncfun3_k1[,2],type='l',col='darkorange')
lines(x=tx1_k1,y=truncfun3_k1[,3],type='l',col='green')
#lines(x=tx1_k1,y=truncfun3_k1[,4],type='l',col='aquamarine4')
lines(x=tx1_k1,y=truncfun3_k1[,4],type='l',col='blue')



#Plot after
truncate2_k1=1
tx2_k1=(truncate2_k1):(runsG1+1)
truncfun2_k1=funValues_k1[tx2_k1,]

plot(x =tx2_k1,y=truncfun2_k1[,1],type='l',col='red',xlim=c(truncate2_k1,runsG1+1),ylim=c(0,1),xlab='State number',ylab='Proportion of ones')
lines(x=tx2_k1,y=truncfun2_k1[,2],type='l',col='darkorange')
lines(x=tx2_k1,y=truncfun2_k1[,3],type='l',col='green')
lines(x=tx2_k1,y=truncfun2_k1[,4],type='l',col='blue')

xvals_k1=sort(as.vector(truncfun2_k1))
Fvals=(1:length(xvals_k1))/length(xvals_k1)
plot(x=xvals_k1,y=Fvals,type='l',xlim=c(min(xvals_k1),max(xvals_k1)),ylim=c(0,1),xlab='x',ylab='F(x) for k_1')


#this was k1
#-----------------------------------------
#here comes k2

#compute k2:
funValues_k2=matrix(NA,runsG1+1,4)
k2_ind <- (1:(cols1*rows1-1))[!(1:(cols1*rows1-1)) %in% (1:(cols1-1))*rows1]

k2_temp=b3a0mc[2:(rows1*cols1),]-b3a0mc[1:(rows1*cols1-1),]
funValues_k2[,1]=colSums(k2_temp[k2_ind,]==0)/((rows1-1)*cols1)
k2_temp=b3a1mc[2:(rows1*cols1),]-b3a1mc[1:(rows1*cols1-1),]
funValues_k2[,2]=colSums(k2_temp[k2_ind,]==0)/((rows1-1)*cols1)
k2_temp=b3ar1mc[2:(rows1*cols1),]-b3ar1mc[1:(rows1*cols1-1),]
funValues_k2[,3]=colSums(k2_temp[k2_ind,]==0)/((rows1-1)*cols1)
k2_temp=b3ac1mc[2:(rows1*cols1),]-b3ac1mc[1:(rows1*cols1-1),]
funValues_k2[,4]=colSums(k2_temp[k2_ind,]==0)/((rows1-1)*cols1)

#Plot before
truncate1_k2=200
tx1_k2=1:(truncate1_k2)
truncfun3_k2=funValues_k2[tx1_k2,]

plot(x =tx1_k2,y=truncfun3_k2[,1],type='l',col='red',xlim=c(0,truncate1_k2),ylim=c(0,1),xlab='State number',ylab='Proportion of equal vertical neighbors')
lines(x=tx1_k2,y=truncfun3_k2[,2],type='l',col='darkorange')
lines(x=tx1_k2,y=truncfun3_k2[,3],type='l',col='green')
#lines(x=tx1_k2,y=truncfun3_k1[,4],type='l',col='aquamarine4')
lines(x=tx1_k2,y=truncfun3_k2[,4],type='l',col='blue')


#Plot after
truncate2_k2=200
tx2_k2=(truncate2_k2):(runsG1+1)
truncfun2_k2=funValues_k2[tx2_k2,]

plot(x =tx2_k2,y=truncfun2_k2[,1],type='l',col='red',xlim=c(truncate2_k2,runsG1+1),ylim=c(0,1),xlab='State number',ylab='Proportion of ones')
lines(x=tx2_k2,y=truncfun2_k2[,2],type='l',col='darkorange')
lines(x=tx2_k2,y=truncfun2_k2[,3],type='l',col='green')
lines(x=tx2_k2,y=truncfun2_k2[,4],type='l',col='blue')

xvals_k2=sort(as.vector(truncfun2_k2))
Fvals=(1:length(xvals_k2))/length(xvals_k2)
plot(x=xvals_k2,y=Fvals,type='l',xlim=c(min(xvals_k2),max(xvals_k2)),ylim=c(0,1),xlab='x',ylab='F(x) for k_2')







#the plots of the cdf's:
plot(x=xvals_k2,y=Fvals,type='l',xlim=c(min(xvals_k2),max(xvals_k2)),ylim=c(0,1),xlab='x',ylab='F(x) for k_2')

