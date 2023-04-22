#2-2-2 (1)
library(readr)
library(ggplot2)
a01 <- read_csv("A02L02.csv")
ggplot(a01, aes(x=A, y=B) ) + 
	geom_point()
#ggplot(a01, aes(x=A, y=B) ) + 
#  geom_point()+theme_bw()
