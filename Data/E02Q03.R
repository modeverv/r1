#2.2.1
library(tidyverse)
x29 <- read_csv("E02P02.csv", col_types="fddd")
ggplot(x29,aes(x="",y=人数,fill=世代))+geom_bar(stat="identity")+
geom_text(aes(y=座標,label=割合))+coord_polar("y",direction=-1)+theme_void()

