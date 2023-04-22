#4-3-3
library(tidyverse)
ggplot(data=data.frame(x=c(-1,15)), aes(x=x)) +
  stat_function(fun=dgamma, args=c(shape=4,rate=2) )


