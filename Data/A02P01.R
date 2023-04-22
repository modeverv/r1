#2-1-5
# クロス集計
library(readr)
library(tidyr)
# %>% のためにtidyr が必要
# library(tidyverse) でも良い。
# magrittr というパッケージを使うと %<>% も使える
# ただしmagrittr は 別途インストールが必要
#
b01 <- read_csv("A02L01.csv")
#
# もし文字化けする場合に文字コードを指定するには
#
#b01 <-  read_csv("A02L01.csv",locale=locale(encoding="UTF-8"))
#b01 <-  read_csv("A02L01.csv",locale=locale(encoding="CP932"))
#
b02 <- table( b01$study, b01$result) 
prop.table( b02 ) 
prop.table( b02, 1)
prop.table( b02, 2) 
addmargins(b02 )
addmargins(b02, 1)
addmargins(b02, 2)
table(b01[,1:2] ) %>%  prop.table() %>% addmargins()
