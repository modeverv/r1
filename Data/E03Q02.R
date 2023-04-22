#3.1.3
library(tidyverse)
q09 <- read_csv("E03P03.csv")
q10 <- read_csv("E03P04.csv")
ggplot(q10,aes(x=点数,y=度数))+geom_bar(stat="identity",width=1)
ggplot(q09)+stat_boxplot(aes(x=sub,y=score),coef=Inf)