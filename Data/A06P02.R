# 6-3-1
library(tidyverse)
prob <- 0.3
#１回の標本のサンプル数（割り切れないほうが良い）
n <- 1001
#実験の回数
m <- 100 
#信頼係数
alpha<- 0.05
#estimate（推定量)
est <- numeric(m)
for(j in 1:m) {
  est[j]  <- sum(rbinom(n,1,prob)/n)
} 
#結果をtibbleで表の形にする
z <- tibble(count=1:m,est=est,
            lower=est-qnorm(1-alpha/2,0,1)*sqrt(est*(1-est)/n),
            upper=est+qnorm(1-alpha/2,0,1)*sqrt(est*(1-est)/n),
            check= ifelse( abs(prob-est) < qnorm(1-alpha/2,0,1)*
                             sqrt(est*(1-est)/n),"Y","N")  )
#グラフ
ggplot(z)+geom_point(aes(x=count,y=est))+
  geom_segment(aes(x=count,y=lower,xend=count,yend=upper,colour=check))+
  geom_hline(yintercept=prob,colour="red")+ylim(0.1,0.5)




prob <- 0.3
n <- 1001
m <- 100
alpha<- 0.05
est <- numeric(m)
for(j in 1:m) {
  est[j]  <- sum(rbinom(n,1,prob)/n)
}
z <- tibble(count=1:m,est=est,
            lower=est-qnorm(1-alpha/2,0,1)*sqrt(est*(1-est)/n),
            upper=est+qnorm(1-alpha/2,0,1)*sqrt(est*(1-est)/n),
            check= ifelse( abs(prob-est) < qnorm(1-alpha/2,0,1)*sqrt(est*(1-est)/n),"Y","N")  )
ggplot(z)+geom_point(aes(x=count,y=est))+
  geom_segment(aes(x=count,y=lower,xend=count,yend=upper,colour=check))+
  geom_hline(yintercept=prob,colour="red")

prob <- 0.3
n <- 1001
m <- 100
alpha<- 0.05
est <- numeric(m)
for(j in 1:m) {
  est[j]  <- sum(rbinom(n,1,prob)/n)
}
z <- tibble(count=1:m,est=est,
            lower=est-qnorm(1-alpha/2,0,1)*sqrt(est*(1-est)/n),
            upper=est+qnorm(1-alpha/2,0,1)*sqrt(est*(1-est)/n),
            check= ifelse( abs(prob-est) < qnorm(1-alpha/2,0,1)*sqrt(est*(1-est)/n),"Y","N")  )
ggplot(z)+geom_point(aes(x=count,y=est)) +
 geom_segment(aes(x=count,y=lower,xend=count,yend=upper,colour=check))+
 geom_hline(yintercept=prob,colour="red")


subX <- c(66,73,65,64,59,64,66,63,64,74)
subY <- c(61,64,69,65,70,76,74,82,79,72)
t.test(subX,subY,paired=TRUE)
t.test(subX-subY,mu=0)












x <- rnorm(10,0,1)
y <- rnorm(10,0,1)
x
cor.test(x,y)
cor(x,y)
pt(-1.0912,8)+(1- pt(1.0912,8) )

x01 <- 10
x02 <- x01+2
x03 <- x02*3
x04 <- x03 -6
x05 <- x04/3
x04

pgamma(1,rate=50,shape=10)

pnorm(40,mean=50,sd=10)