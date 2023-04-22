# 8-3-2
library(tidyverse)
n <- 5;alpha <- 0.05
# 5個のサンプルデータ
x <- c(1.275,0.592,1.714,-1.888,1.641)
y <- c(-0.112,-0.212,0.575,0.088,0.890)
# corで相関を計算
r <- cor(x,y)
t <- r * sqrt( n-2 )/sqrt( 1- r^2 )
z <- 1/2 * log( (1 + r )/ ( 1 - r ))
zL <- z - qnorm(1- alpha/2,0,1) /sqrt(n-3)
zU <- z + qnorm(1- alpha/2,0,1) /sqrt(n-3)
rhoL <- ( exp(2*zL)-1 )/( exp(2*zL)+1 )
rhoU <- ( exp(2*zU)-1 )/( exp(2*zU)+1 )
cor.test(x,y)
# cor.test の値と下の値を比較する
#c(rhoL,rhoU)
#t