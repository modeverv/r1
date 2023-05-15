# 6-2-7 
# Macで文字が□となる場合以下をコメントアウト
# theme_set(theme_minimal(base_size=16,base_family="sans") )
#
alpha <- 0.05
p1 <- 1-alpha/2
x1 <- qnorm(alpha/2,0,1)
y1 <- dnorm(x1,0,1)
x2 <- qnorm(1-alpha/2,0,1)
y2 <- dnorm(x2,0,1)
ggplot(data=data.frame(x=c(-4,4)), aes(x=x)) +
  stat_function(fun=dnorm, args=c(mean=0,sd=1) )+geom_segment(x=x1,y=0,xend=x1,yend=y1,colour="red")+geom_segment(x=x2,y=0,xend=x2,yend=y2,colour="red")+annotate("text",x=0,y=0.3,label=expression(paste(over(alpha,2))))
ggplot(data=data.frame(x=c(-4,4)), aes(x=x)) +
  stat_function(fun=dnorm, args=c(mean=0,sd=1) )+geom_segment(x=x1,y=0,xend=x1,yend=y1,colour="red")+geom_segment(x=x2,y=0,xend=x2,yend=y2,colour="red")+annotate("text",x=0,y=0.3,label=expression(paste(over(alpha,2))))+annotate("text",x=2,y=0.3,label=expression(paste(over(alpha,2))))