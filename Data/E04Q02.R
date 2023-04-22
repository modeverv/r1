#4.3.4
library(tidyverse)
rate <- 2
shape <- 3
x1 <- 1
y1 <- dgamma(x1,shape=shape,rate=rate)
ggplot(data=data.frame(x=c(0,5)), aes(x=x)) +
  stat_function(fun=dgamma, args=c(shape=shape,rate=rate) )+
  geom_area(stat = "function", fun = dgamma, args=c(shape=shape,rate=rate),fill = "red", xlim = c(0, x1))+geom_segment(x=0,y=0,xend=0,yend=dgamma(0,shape,rate),colour="black")+geom_segment(x=0,y=0,xend=8,yend=0,colour="black")