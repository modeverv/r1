#t分布のグラフ　7-2-3 
ggplot(data=data.frame(x=c(-5,5)), aes(x=x)) +
  stat_function(fun=dt, args=c(df=2),linetype="solid")+
  stat_function(fun=dt, args=c(df=4),linetype="dashed")+
  stat_function(fun=dt, args=c(df=10),linetype="longdash")+
  stat_function(fun=dnorm,colour="red")
  
