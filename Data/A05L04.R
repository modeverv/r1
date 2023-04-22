# 5-3-2
library(tidyverse)
n <- 50000
p <- 0.3
bt <- tibble(count=1:n,trial=rbinom(n,1,p),success=cumsum(trial),prob=success/count)
ggplot(bt,aes(x=count,y=prob))+
  ylim(0,1)+geom_hline(yintercept=p, colour="red")+geom_line()
# ylim はy軸の範囲
ggplot(bt,aes(x=count,y=prob))+
  ylim(0,0.5)+geom_hline(yintercept=p, colour="red")+geom_line()
