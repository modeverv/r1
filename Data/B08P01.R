# 8-3-2
# 追加　多項分布で乱数を発生させたもの
library(tidyverse)
rho <- 0.3
n <-10;   alpha <- 0.05
j0 <- matrix(c(1,rho,rho,1),nrow=2)
j1<- rmvnorm(n, mean = c(0, 0), sigma=j0)
r <- cor(j1[,1],j1[,2])
t <- r*sqrt(n-2)/sqrt(1-r^2)
z <- 1/2 * log((1+r)/(1-r))
zL <- z - qnorm(1-alpha/2,0,1) /sqrt(n-3)
zU <- z + qnorm(1- alpha/2,0,1) /sqrt(n-3)
rhoL <- ( exp(2*zL)-1 )/( exp(2*zL)+1 )
rhoU <- ( exp(2*zU)-1 )/( exp(2*zU)+1 )