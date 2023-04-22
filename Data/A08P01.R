# 8-1-3 
n1 <- 14;n2 <- 15;n3 <- 16
#set.seet(3)
#x <- round(rnorm(n1,65,6),0)
#y <- round(rnorm(n2,68,6.5),0)
#z <- round(rnorm(n3,62,5.5),0)
x <- c(58,59,61,64,67,67,67,67,68,68,70,71,72,73)
y <- c(54,56,56,57,58,59,59,60,61,62,63,66,68,70,70)
z <- c(52,53,56,59,60,60,61,62,64,65,65,66,68,70,75,76)
#x <-c(51,56,58 62 62 64 65 66 70 72)
#y <-c(56, 62 64 64 68 72 73 74 74 75)
# 点数と ABCでクラス分け
h1 <- tibble(score=c(x,y,z),class1=c(rep("A",n1),rep("B",n2),rep("C",n3))) 
#中身を確認する場合には以下のコマンドを打つ
#summary(h1)
#h1
# 点数と LMHでクラス分け
# group_by はclass1ごとに分けて平均点を計算
h1 <- h1 %>% mutate(class2 = ifelse(score<68,ifelse(score<61,"L","M"),"H") ) %>% 
    mutate(class2=factor(class2,levels=c("L","M","H"))) %>%
    group_by(class1) %>% mutate(mean=mean(score))
ggplot(h1)+geom_point(aes(x=class1,y=score))+geom_line(aes(x=class1,y=score))+
    geom_point(aes(x=class1,y=mean),colour="red")+
    geom_hline(yintercept=mean(h1$score),colour="blue")
# 検定
h3 <- aov(score~class1,data=h1)
summary(h3)
# クラス2 で平均点を計算し直す
h1 <- h1 %>%  group_by(class2) %>% mutate(mean=mean(score))
ggplot(h1)+geom_point(aes(x=class2,y=score))+geom_line(aes(x=class2,y=score))+
  geom_point(aes(x=class2,y=mean),colour="red")+
  geom_hline(yintercept=mean(h1$score),colour="blue")
# 検定
h4 <- aov(score~class2,data=h1)
summary(h4)
# h3 と比較
oneway.test(score~class1,data=h1,var.equal=TRUE)
oneway.test(score~class1,data=h1)
# 追加(h4と比較する場合）
#oneway.test(score~class2,data=h1,var.equal=TRUE)
#oneway.test(score~class2,data=h1)
