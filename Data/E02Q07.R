#2.2.5
library(tidyverse)
q06 <- read_csv("E02P06.csv")
ggplot(q06)+geom_bar(aes(x=subjA,y=subjB),stat="identity")
ggplot(q06,aes(x=subjA,y=after_stat(density) ))+ geom_histogram(bins=20)+geom_density()
#ggplot(q06,aes(x=subjA,y=..density..,))+geom_histogram(bins=20)+geom_density()
ggplot(q06)+geom_point(aes(x=subjA,y=subjB))
ggplot(q06)+geom_line(aes(x=subjA,y=subjB))
