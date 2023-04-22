#5.2.1
library(tidyverse)
ggplot(data=data.frame(x=c(0,5)), aes(x=x)) +
  stat_function(fun=dexp, args=c(rate=1) )
ggplot(data=data.frame(x=c(-4,4)), aes(x=x)) +
  stat_function(fun=dt, args=c(df=10) )
ggplot(data=data.frame(x=c(0,6)), aes(x=x)) +
  stat_function(fun=df, args=c(df1=3,df2=10) )
ggplot(data=data.frame(x=c(-0.5,1.5)), aes(x=x)) +
  stat_function(fun=dunif, args=c(min=0,max=1) )
