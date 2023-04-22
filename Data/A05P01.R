# 5-3-1
ggplot(data=data.frame(x=c(-1,5)), aes(x=x)) +
    stat_function(fun=df, args=c(df1=30,df2=20) )
#m <-15 
#n <- 30
#alpha1 <- qf(0.025,m,n) # これは 1/qf(0.975,n,m) （nとmを入れ替え）
#alpha2 <- qf(0.975,m,n)
#y1 <- df(alpha1,m,n)
#y2 <- df(alpha2,m,n)
#ggplot(data=data.frame(x=c(-1,5)), aes(x=x)) +
#  stat_function(fun=df, args=c(df1=m,df2=n) )+geom_segment(x=alpha1,y=0,xend=alpha1,yend=y1, colour="red") + geom_segment(x=alpha2,y=0,xend=alpha2,yend=y2,colour="red") + geom_segment(x=alpha1,y=0,xend=alpha1,yend=y1,colour="red") + geom_segment(x=alpha2,y=0,xend=alpha2,yend=y2,colour="red")
