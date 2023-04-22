library(tidyverse)

library(tidyverse)
# 平均a 標準偏差が b の乱数を n個作る
n <- 20
a <- 10
b <- 5
m <- 1000
# 配列の変数を定義するためのもの
g6 <- numeric(n)
g7 <- numeric(m)
#
for(i in 1:m){
  g6 <- rnorm(n,a,b)
  barx <- mean(g6)
  g7[i] <- sum( (g6-a)/(b*sqrt(n)) )/ sqrt( sum((g6-barx)^2/b^2 ) / (n-1) )
}
g8 <- tibble(x=g7)
ggplot(g8)+geom_histogram(aes(x=x,y=after_stat(density) ), bins=50)+stat_function(fun=dt, args=c(df=(n-1)) )
#ggplot(g8)+geom_histogram(aes(x=x,y=..density..),bins=50)+stat_function(fun=dt, args=c(df=(n-1)) )
