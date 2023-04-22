#7-1-4
# スライドのグラフ
library(tidyverse)
prob <- 0.5
n <- 500
u0 <- n*prob
s0 <- sqrt(n*prob*(1-prob))
qnorm(0.025,mean=u0,sd=s0)
i1 <- tibble(x=200:300,y=dbinom(200:300,n,prob),z=c(rep("N",29),rep("Y",43),rep("N",29)))
ggplot(i1)+geom_bar(aes(x=x,y=y,fill=z),stat="identity")+stat_function(fun=dnorm,args=c(mean=u0,sd=s0),color="red") + theme(legend.position = 'none')+scale_fill_manual(values = c("red","black"))


