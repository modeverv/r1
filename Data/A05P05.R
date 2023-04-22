#5-3-5
#library(tidyverse)
a <- 10;b <- 5
n <- 20;m <- 1000
#
g6 <- numeric(n)
g7 <- numeric(m)
for(i in 1:m){
  g6 <- rnorm(n,a,b)
  barx <- mean(g6)
  g7[i] <- sum( (g6-a)/(b*sqrt(n)) )/ sqrt( sum((g6-barx)^2/b^2 ) / (n-1) )
}
g8 <- tibble(x=g7)
ggplot(g8)+geom_histogram(aes(x=x,y=after_stat(density)),bins=50)+stat_function(fun=dt, args=c(df=(n-1)) )
#ggplot(g8)+geom_histogram(aes(x=x,y=..density..),bins=50)+stat_function(fun=dt, args=c(df=(n-1)) )
