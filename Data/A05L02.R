library(tidyverse)
n <- 30
alpha <- 0.05
talpha1 <- qt(alpha/2,n)
talpha2 <- qt(1-alpha/2,n)
y1 <- dt(talpha1,n)
y2 <- dt(talpha2,n)
ggplot(data=data.frame(x=c(-5,5)),aes(x=x) )+
	stat_function(fun=dt,args=c(df=n) )+
  geom_segment(x=talpha1,y=0,xend=talpha1,yend=y1,color="red")+
  geom_segment(x=talpha2,y=0,xend=talpha2,yend=y2,color="red")
