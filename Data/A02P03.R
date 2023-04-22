#2-2-2 (2)
library(ggplot2)
# a01 <- read_csv("A02L02.csv")
# 上をすでに行っている前提で
ggplot(a01, aes(x=A, y=B)) +
  geom_line() +
  labs(x= "height", y="weight") +
  theme(text = element_text(size=16) )
