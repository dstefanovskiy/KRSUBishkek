# https://www.datacamp.com/community/tutorials/decision-trees-R

library(ISLR)
data(package="ISLR")
carseats<-Carseats

require(tree)
names(carseats)
hist(carseats$Sales)

High = ifelse(carseats$Sales<=8, "No", "Yes")
carseats = data.frame(carseats, High)

tree.carseats = tree(High~.-Sales, data=carseats)

summary(tree.carseats)

plot(tree.carseats)
text(tree.carseats, pretty = 0)


