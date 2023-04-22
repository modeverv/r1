#4.3.5
library(tidyverse)
mean <- 50
sd <- 10
x1 <- 40
y1 <- dnorm(x1,mean=mean,sd=sd)
ggplot(data=data.frame(x=c(0,100)), aes(x=x)) +
  stat_function(fun=dnorm, args=c(mean=mean,sd=sd) ) +
  geom_area(stat = "function", fun = dnorm, args=c(mean=mean,sd=sd),fill = "red", xlim = c(0, x1))
