# 7-2-1
# スライドの演習
x <- c(97.7,94.7,91.6,98.0,102.9,94.5,99.1,95.3,93.8,102.0)
z1 <- sum(x-100)/(sqrt(10)*5)
t1 <- (mean(x)-100)/(sqrt(var(x))/sqrt(10))
y1 <- dt(t1,9)
p<- 2*pt(t1,9)
# 7-2-2
#library(tidyverse)
#ggplot(data=data.frame(x=c(-5,5)), aes(x=x)) +
#  stat_function(fun=dt, args=c(df=2),linetype="solid")+
#  stat_function(fun=dt, args=c(df=4),linetype="dashed")+
#  stat_function(fun=dt, args=c(df=10),linetype="longdash")+
#  stat_function(fun=dnorm,colour="red")
  
