#E2-1-4
library(tidyverse)
x21 <- read_csv("E02P01.csv")
x22 <- table(x21$study,x21$result)
x23 <- prop.table(x22)
x24 <- addmargins(x23)
x24