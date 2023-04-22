# 8-2-3 Part2
# 
library(tidyverse)
b01 <- read_csv("A02L01.csv")
b02 <- table( b01$study, b01$result) 
summary(b02)
chisq.test(b02)
chisq.test(b02,correct=FALSE)
# イェーツの補正をするかしないかを明示する
#chisq.test(b02,correct=TRUE)
