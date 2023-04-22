#2.2.2
library(tidyverse)
q02 <- read_csv("E02P03.csv", col_types="ffd")
ggplot(q02,aes(x=Media,y=Time,fill=Day))+geom_bar(stat="identity")+geom_text(aes(label=Time),vjust=5,position="stack")
