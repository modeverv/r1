library(tidyverse)
m <- 15
n <- 30
falpha1 <- qf(0.025,m,n) #1/qf(0.975,n,m) (nとmの入れ替え) 動画は0.95 ですが...
falpha2 <- qf(0.975,m,n)
y1 <- df(falpha1,m,n)
y2 <- df(falpha2,m,n)
ggplot(data=data.frame(x=c(-1,5)),aes(x=x) )+
	stat_function(fun=df,args=c(df1=m,df2=n) )+
  geom_segment(x=falpha1,y=0,xend=falpha1,yend=y1,color="red")+
  geom_segment(x=falpha2,y=0,xend=falpha2,yend=y2,color="red")
