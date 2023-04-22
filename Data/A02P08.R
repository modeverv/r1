# 2-2-4
#library(tidyverse)
c02 <- read_csv("A02L04.csv")
# ggplot2 の3.4.0 から
#
# ggplot(c02,aes(x= subjA, y= ..density..,)) + 
#  geom_histogram() +  geom_density()
#
#が次のように変更になった
ggplot(c02,aes(x= subjA, y= after_stat(density) ) ) + 
         geom_histogram() +  geom_density()
#
# 赤いメッセージは binの幅をを変更した方が良いというメッセージ
#ggplot(c02,aes(x= subjA, y= after_stat(density) ) ) + 
#  geom_histogram(bins=30) +  geom_density()
#
