# 8-2-2 のスライドのグラフ
library(tidyverse)
n <- 30
x1 <- qchisq(0.95,n)
y1 <- dchisq(x1,n)
ggplot(data=data.frame(x=c(-1,60)), aes(x=x)) +
  stat_function(fun=dchisq, args=c(df=n))+
  geom_segment(x=x1,y=0,xend=x1,yend=y1)
