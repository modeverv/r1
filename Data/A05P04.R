#
n <- 3
m <- 1000
# 5-3-4
g4 <- numeric(m)
for(i in 1:m){
  g4[i] <- ( sum(rnorm(n,0,1)^2) ) 
}
g5 <- tibble(x=g4)
ggplot(g5)+geom_histogram(aes(x=x,y=after_stat(density)),bins=50)+stat_function(fun=dchisq, args=c(df=n) )
#ggplot(g5)+geom_histogram(aes(x=x,y=..density..),bins=50)+stat_function(fun=dchisq, args=c(df=n) )
#ggplot(data=data.frame(x=c(-1,10)), aes(x=x)) +
#  stat_function(fun=dchisq, args=c(df=3))
