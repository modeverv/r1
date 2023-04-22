library(tidyverse)
n <- 20
alpha <- 0.05
calpha1 <- qchisq(alpha/2,n)
calpha2 <- qchisq(1-alpha/2,n)
y1 <- dchisq(calpha1,n)
y2 <- dchisq(calpha2,n)
ggplot(data=data.frame(x=c(-1,100)),aes(x=x) )+
	stat_function(fun=dchisq,args=c(df=n) )+geom_segment(x=calpha1,y=0,xend=calpha1,yend=y1,color="red")+geom_segment(x=calpha2,y=0,xend=calpha2,yend=y2,color="red")
