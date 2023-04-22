# 5-3-3
#各回の乱数の個数
n <- 1000
# ヒストグラムを書くための繰り返しの数
m <- 10000
# 一様乱数のためのパラメータ
a <- -10
b <- 10
#試しに一回
g2 <- tibble(x=runif(n,a,b))
ggplot(g2)+geom_histogram(aes(x=x,y=after_stat(density)),bins=50)
#ggplot(g2)+geom_histogram(aes(x=x,y=..density..),bins=50)
#
g3 <- numeric(m)
for(i in 1:m){
  g3[i] <- ( mean(runif(n,a,b)) -(a+b)/2 )  / ( sqrt((b-a)^2/12) /sqrt(n) )  
}
g4 <- tibble(x=g3)
ggplot(g4)+geom_histogram(aes(x=x,y=after_stat(density)),bins=50)
#ggplot(g4)+geom_histogram(aes(x=x,y=..density..),bins=50)


