#print(1)
# 1 - 1
# c()
# mean

# sec1-1
print('sec1-1')
x01 <- 10
x01<- x01 + 2
x01 <- x01 * 3
x01 <- x01 - 6
x01 <- x01/3
x01
print("1-1-2")
x01 <- 6
x02<- 4
x03 <- x01 +x02
x01 <- 7
x02 <- 5
x03


print('1-1-3')
x01 <- 10
x02 <- x01+2
x03 <- x02*3
x04 <- x03 -6
x05 <- x04/3
x04

print('1-2-2')
x01 <- c(118,119,120,121,123)
x01[2:4]
x01[1]

print('1-2-3')
x01 <- c(118,119,120,121,123)
x02 <- length(x01)
x02
print('1-2-4')
x01 <- c(117,119,120,121,123)
mean(x01)
print('1-2-5')
x01 <- c(117,119,120,121,123)
x02 <- c(58,59,60,61,62)
x03 <- data.frame(height=x01, weight=x02)
x03[3,2]
x03
# sec1-3
# ファイルの読み込み
install.packages('tidyyerse')
install.packages('knitr')
library(tidyverse)
read_table("Data/A01L01.txt")
read_csv("Data/A01L02.csv")
read_tsv('Data/A01L03.tsv')
print('sec-1-3-1')
x01 <- read_table2("Data/E01P01.txt")
x01[1,1]

x01 <- read_csv("Data/E01P01.txt")
x01[1,1]
x01 <- read_table2("Data/E01P02.csv")
x01[1,1]
x01<-read_csv("Data/E01P02.csv")
x01[1,1]

print("sec-1-test")
x01 <- 10
x02 <- x01+2
x03 <- x02*3
x04 <- x03 -6
x05 <- x04/3
x04


x01 <- c(118,119,120,121,123)
x02 <- length(x01)
x02

x01 <- c(117,119,120,121,123)
x02 <- c(58,59,60,61,62)
x03 <- data.frame(height=x01, weight=x02)
x03[3,2]

library(tidyverse)
x01 <- read_csv("Data/E01P01.txt")
x01[1,1]

print('sec-2-1-3')
x21 <- read_csv("E02P01.csv")
x22 <- table(x21$study,x21$result)
x22
x23 <- prop.table(x22)
x23
x24 <- addmargins(x22)
x24

x21 <- read_csv("E02P01.csv")
x22 <- table(x21$study,x21$result)
x22
x23 <- prop.table(x22)
x23
x24 <- addmargins(x23)
x24
# 小テスト 2-2
x21 <- read_csv("E02P01.csv")
x22 <- table(x21$study,x21$result)
x22
x23 <- prop.table(x22)
x23
x24 <- addmargins(x22)
x24
library(ggplot2)
library(magrittr)
library(dplyr)

jinko <- read.csv("jinko.csv")
jinko2 <-  jinko[c(4,7)]
jinko2 <- jinko2 %>% arrange(年齢階級)
ggplot(jinko2, aes(x = 年齢階級, y = 男女計)) +
  geom_bar(stat = "identity") +
  labs(x = "年齢階級", y = "人口(万人)", title = "年齢階級別人口") +
     theme(axis.text.x = element_text(angle = 90, hjust = 1))

install.packages('tidyyerse')
install.packages('knitr')
install.packages('ggplot2')
