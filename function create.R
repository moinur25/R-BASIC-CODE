my_fun<-function(temp_f){
  temp_c<-(temp_f-32)*5/9
  return(temp_c)
}

###################
f<-function(x){
  n<-length(x)
  kk<-(sum(x))/n
  vv<-sum((x-kk)^2)/(n-1)
  print(vv)
  print(kk)
}
y<-c(1,2,3,4,7,3,2,4)
f(y)

#####################
rm(list=ls())
set.seed(192264)
alpha=7.5
beta=6.0
n=30
f=function(x){beta*(-log(x))^(1/alpha)}
U=runif(n,0,1)
X=f(U)
dev.new(width=5,height=5)
hist(X,prob=TRUE,main="Desity Plot",col="blue",ylim=c(0,1))
lines(density(X),col="red",lwd=3)
mean(X)
sd(X)
var(X)
summary(X)
U2=function(R){(1/(n-1))*sum((R-mean(R))^2)}
U3=function(R){(1/(n-1))*sum((R-mean(R))^3)}
U4=function(R){(1/(n-1))*sum((R-mean(R))^4)}
D2=U2(X)
D3=U3(X)
D4=U4(X)
G1=U3(X)/sqrt((U2(X))^3)
G1
G2=U4(X)/(U2(X))^2-3
G2
cbind(U,X,D2,D3,D4,G1,G2)
##################
#install.packages("FinancialMath")
library(FinancialMath)
amort.table(Loan = 5000, n=5,i=0.12, ic=1, pf=1, plot = TRUE)
(f<-5000*(1+0.12*5))/5
##################
rm(list=ls())
p<-1387.05
o<-5000
#interest<-5000*0.12
interest=principle=outstanding_balance=vector<-NULL
ar<-function(o,p,ini,n){
  interest=principle=outstanding_balance=vector<-NULL
for(i in 1:n){ 
  interest[i]<-(o*ini)
  principle[i]<-(p-interest[i])
  outstanding_balance[i]<-(o-principle[i])
  o<-(o-principle[i])
  
}
  
  k<-data.frame(interest,principle,ifelse(k$outstanding_balance<0,0,k$outstanding_balance))
  colnames(k)[3]<-"outstanding_balance"
  k  
  }

k<-ar(5000,1387.05,.12,5)
plot(1:5,k$outstanding_balance,lty=4)
?par()
##########################
rm(list=ls())
n=20
f=function(X,Y){sqrt(-2*log(X)/X)*Y}
S=numeric(0)
X=numeric(0)
Y=numeric(0)
P=numeric(0)
Q=numeric(0)
CS=numeric(0)
K=0
set.seed(192258)
repeat{
  U1=runif(1,0,1)
  U2=runif(1,0,1)
  V1=2*U1-1
  V2=2*U2-1
  RS=(V1)^2+(V2)^2
  if(RS<1)
  {
    K=K+1
    S[K]=RS
    X[K]=f(S,V1)
    Y[K]=f(S,V2)
    P[K]=5+X[K]*7
    Q[K]=-7+Y[K]*10
    CS[K]=P[K]^2+Q[K]^2
  }
  if(K==n)
    break
}
D=cbind(S,X,Y,P,Q)
head(D)
tail(D)
####################
rm(list=ls())
set.seed(192264)
m=5
s=3.5
n=10000
T=100
uu=array(0,c(n,T))
xx=array(0,c(n,T))
M=numeric(T)
S=numeric(T)
for(i in 1:T){
  u=runif(n,0,1)
  uu[ ,i]=u
  x=m+s*tan((u-0.5)*pi)
  xx[ ,i]=x
  M[i]=mean(x)
  S[i]=sd(x)
}
round(M,1)
round(S,1)
head(round(uu,1))
head(round(xx,1))
colMeans(xx)
hist(M)
dev.new(width=7,height=6)
#jpeg(file="myplot.jpeg",res=700,units="in",width=7,height=6)
par(mfrow=c(2,1))
plot(1:T,M,"1xxm",col="red",lwd=2,xlab="Time",ylab="Mean(s)")
plot(1:T,S,"1",col="blue",lwd=2,xlab="Time",ylab="Standard Deviation(s)")
#dev.off()
#########################
rm(list=ls())
set.seed(192264)
alpha=7.5
beta=6.0
n=30
f=function(x){beta*(-log(x))^(1/alpha)}
U=runif(n,0,1)
X=f(U)
dev.new(width=5,height=5)
hist(X,prob=TRUE,main="Desity Plot",col="blue",ylim=c(0,1))
lines(density(X),col="red",lwd=3)
mean(X)
sd(X)
var(X)
summary(X)
U2=function(x){(1/(n-1))*sum((x-mean(x))^2)}
U3=function(x){(1/(n-1))*sum((x-mean(x))^3)}
U4=function(x){(1/(n-1))*sum((x-mean(x))^4)}
U2(X)
U3(X)
U4(X)
G1=U3(X)/sqrt((U2(X))^3)
G1
G2=U4(X)/(U2(X))^2-3
G2
#################################
rm(list=ls())
#T=function(x){exp(2*x+0.9*x^2+3*x^3)}
f=function (x)7*{exp(14*x-7)+0.9*(7*x-3.5)^2+3*(7*x-3.5)^3}
a=9
c=5
m=11211
X0=25
n=15
set.seed(192258)
I=1:n
X=numeric(0)
U=numeric(0)
F=numeric(0)
for(i in 1:n){
  if(i==1)
    X[i]=(a*X0+c)%%m
  else
    X[i]=(a*X[i-1]+c)%%m
  U[i]=X[i]/m
  F[i]=f(U[i])
}
cbind(I,X,U,F)

