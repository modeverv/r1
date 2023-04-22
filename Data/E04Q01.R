#4.3.3
library(tidyverse)
rate <- 2
x1 <- 1
y1 <- dexp(x1,rate)
ggplot(data=data.frame(x=c(0,4)), aes(x=x)) +
  stat_function(fun=dexp, args=c(rate=rate) )+geom_area(stat = "function", fun = dexp, args=c(rate=rate),fill = "red", xlim = c(1, 6))+geom_segment(x=0,y=0,xend=0,yend=2.5,colour="black")+geom_segment(x=0,y=0,xend=8,yend=0,colour="black")