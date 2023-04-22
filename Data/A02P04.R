# 2-2-2 (3)
library(ggplot2)
# a01 <- read_csv("A02L02.csv")
# 上をすでに行っている前提で
ggplot(a01,aes(x=A, y=B) )+	
  geom_point()+geom_line()+
  theme(text = element_text(size=16) )
# size=16 は文字のサイズ
