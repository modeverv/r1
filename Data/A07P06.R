# 7-3-2
library(tidyverse)
subX <- c(66,73,65,64,59,64,66,63,64,74)
subY <- c(61,64,69,65,70,76,74,82,79,72)
ex1  <- tibble(subX=subX,subY=subY)
ex2 <- ex1 %>% pivot_longer(subX:subY,names_to="sub",values_to="score")
ggplot(ex2)+geom_boxplot(aes(x=sub,y=score))
    

var.test(ex1$subX,ex1$subY)
t.test(ex1$subX,ex1$subY,paired=FALSE,var.equal = FALSE)
t.test(ex1$subX,ex1$subY,paired=FALSE,var.equal = TRUE)

