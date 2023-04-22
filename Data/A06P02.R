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
