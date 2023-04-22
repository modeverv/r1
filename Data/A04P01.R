library(tidyverse)
dbinom(3,10,0.1)
# ?dgeom(0,0.2)
f1 <- tibble(x=0:100, y=dgeom(seq(0,100,1),0.2))
ggplot(f1) +geom_bar(aes(x=x,y=y),stat="identity")  
#
f2 <- tibble(x=0:1000,y=dbinom(seq(0,1000,1),1001,0.2))
ggplot(f2)+geom_bar(aes(x=x,y=y),stat="identity")+
scale_x_continuous(limits=c(150,250))
