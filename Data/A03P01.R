#3-1-4
library(tidyverse)
d01 <- read_csv("A03L01.csv")
d02 <- read_csv("A03L02.csv")
ggplot(d01)+geom_boxplot(aes(x=subject,y=score))
summary(d02)
cor(d02)
var(d02)
