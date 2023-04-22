#7-1-4
library(tidyverse)
prob <- 0.5
n <- 500
u0 <- n*prob
s0 <- sqrt(n*prob*(1-prob))
qnorm(0.95,mean=u0,sd=s0)
i3 <- tibble(x=200:300,y=dbinom(200:300,n,prob),z=c(rep("Y",69),rep("N",32)))
ggplot(i3)+geom_bar(aes(x=x,y=y,fill=z),stat="identity")+stat_function(fun=dnorm,args=c(mean=u0,sd=s0),color="red") + theme(legend.position = 'none')+scale_fill_manual(values = c("red","black"))


