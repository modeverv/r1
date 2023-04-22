#4-3-3
ggplot(data=data.frame(x=c(-1,1.5)), aes(x=x)) +
  stat_function(fun=dexp, args=c(rate=1) )
#ggplot(data=data.frame(x=c(-0.5,4.5)), aes(x=x)) +
#  stat_function(fun=dexp, args=c(rate=2) )
#
#ggplot(data=data.frame(x=c(-1,15)), aes(x=x)) +
#  stat_function(fun=dgamma, args=c(shape=4,rate=2) )
#
#ggplot( data.frame(x = rnorm(1000) ) )+
#  geom_histogram(aes(x=x,y=..density..)) +
#  stat_function(fun = dnorm, colour = "red")

