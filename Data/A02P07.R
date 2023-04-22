# 2-2-3 (3)
# library(tidyverse)
#p1 <- ggplot(c01,aes(x="",y= freq, fill=A) ) + 
#  geom_bar(stat="identity", position="fill") + 
#  geom_text(aes(label=freq, y=pos1))
# これがすでに行われている前提で
p2 <- p1 + 
  coord_polar("y", direction=-1) +
  theme_void()
p2
