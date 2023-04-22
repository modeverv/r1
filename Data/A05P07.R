# 5-3-6
#library(tidyverse)
m <- 1000
n1 <- 6; a1 <- 10;b1 <- 10
n2 <- 7; a2 <- 30;b2 <- 40
ge <- numeric(m)
for(i in 1:m){
  ga <-rnorm(n1,a1,b1) 
  gb <-rnorm(n2,a2,b2) 
  gc <- sum( (ga-mean(ga))^2 / (b1^2))
  gd <- sum( (gb-mean(gb))^2 / (b2^2) )
  ge[i] <- (gc/ (n1-1) ) / (gd / (n2-1) )
}
gf <- tibble(x=ge)
ggplot(gf)+geom_histogram(aes(x=x,y=after_stat(density)),bins=50)+stat_function(fun=df, args=c(df1=(n1-1),df2=(n2-1)))
#ggplot(gf)+geom_histogram(aes(x=x,y=..density..),bins=50)+stat_function(fun=df, args=c(df1=(n1-1),df2=(n2-1)))
