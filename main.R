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

library('tidyverse')
d02 <- read_csv("A03L02.csv")
var(d02)
cor(d02)

data = read.csv("p3-1-2.csv")
values <- rep(data$階級値, data$度数)
values <- c(11,21,31,32,41,43,51,52,53,55,57,61,62,71,74,85)
values
mean <- mean(values)
median <-  median(values)
frequency_table <- table(values)
frequency_table
mode_value <- as.numeric(names(frequency_table[frequency_table == max(frequency_table)]))

cat("最頻値:", mode_value, "\n")
# mode <- as.numeric(names(which.max(table(values))))
cat("最頻値: ", mode, "\n")
cat("中央値: ", median, "\n")
cat("平均値: ", mean, "\n")
# 四分位数の計算
quantiles <- quantile(values)
cat("第1四分位数 (Q1):", quantiles[2], "\n")
cat("第2四分位数 (Q2, 中央値):", quantiles[3], "\n")
cat("第3四分位数 (Q3):", quantiles[4], "\n")


9 /40

# sec4
library('tidyverse')

f1 <- tibble(x=0:10,y=dgeom(seq(0,10,1),0.2))
f1
ggplot(f1) + geom_bar(aes(x=x,y=y),stat="identity")

ggplot(data=data.frame(x=c(-1,1.5)),aes(x=x)) +
  stat_function(fun=dexp,args=c(rate=1))

1/15 + 3/4
# sec4-3-1
dbinom(0,20,1/3)+dbinom(1,20,1/3)+dbinom(2,20,1/3)+dbinom(3,20,1/3)+dbinom(4,20,1/3)
pbinom(4,20,1/3)

# sec4-3-2
dpois(0,2)+dpois(1,2)+dpois(2,2)
ppois(2,2)
# sec4-3-3
1- pexp(1,rate=2)
# sec4-3-4
pgamma(1,rate=2,shape=3)
# sec4-3-5
pnorm(40,mean=50,sd=10)


ggplot(data=data.frame(x=c(-4,4)), aes(x=x)) +
  stat_function(fun=dt, args=c(df=10) )
ggplot(data=data.frame(x=c(0,6)), aes(x=x)) +
 stat_function(fun=df, args=c(df1=3,df2=10) )
ggplot(data=data.frame(x=c(-0.5,1.5)), aes(x=x)) +
 stat_function(fun=dunif, args=c(min=0,max=1) )