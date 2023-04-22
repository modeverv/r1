# 2-2-3
#library(tidyverse)
c01 <- read_csv("A02L03.csv")
ggplot(c01,aes(x=A, y= freq ) ) + 
  geom_bar(stat="identity")
#
#2-2-3 R
#ggplot(b01,aes(x=study))+geom_bar()