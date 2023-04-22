#2.2.4
library(tidyverse)
q04 <- read_csv("E02P05.csv")
q05 <- read_csv("E02P05.csv", col_types="fdd")
ggplot(q04)+geom_point(aes(x=Age,y=Height))+geom_line(aes(x=Age,y=Height))
ggplot(q05)+geom_bar(aes(x=Age,y=Height),stat="identity")
ggplot(q05,aes(x="",y=Height,fill=Age))+geom_bar(,stat="identity",position="fill")+geom_text(aes(label=Height,y=position),vjust=1)
ggplot(q05,aes(x="",y=Height,fill=Age))+geom_bar(,stat="identity",position="fill")+geom_text(aes(label=Height,y=position),vjust=1)+coord_polar("y",direction=-1)+theme_void()