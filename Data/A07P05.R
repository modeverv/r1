# 7-3-1
library(tidyverse)
x <- c(97.7,94.7,91.6,98.0,102.9,94.5,99.1,95.3,93.8,102.0)
z1 <- sum(x-100)/(sqrt(10)*5)
t1 <- (mean(x)-100)/(sqrt(var(x))/sqrt(10))
y1 <- dt(t1,9)
ggplot(data=data.frame(x=c(-4,4)), aes(x=x)) +
  stat_function(fun=dt,args=c(df=9))+
  geom_segment(x=t1,y=0,xend=t1,yend=y1,colour="red")+
  geom_segment(x=-t1,y=0,xend=-t1,yend=y1,colour="red")
p<- 2*pt(t1,9)
t.test(x,mu=100,alternative="two.sided")
#t.test(x,mu=100,alternative="greater")
#t.test(x,mu=100,alternative="two.sided")
