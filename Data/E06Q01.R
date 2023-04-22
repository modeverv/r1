#6.3.1
library(tidyverse)
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
            check= ifelse( abs(prob-est) < qnorm(1-alpha/2,0,1)*
                             sqrt(est*(1-est)/n),"Y","N")  )
ggplot(z)+geom_point(aes(x=count,y=est))+
  geom_segment(aes(x=count,y=lower,xend=count,yend=upper,colour=check))+
  geom_hline(yintercept=prob,colour="red")