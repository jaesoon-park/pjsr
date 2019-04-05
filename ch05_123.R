as.data.frame(ggplot2::midwest)
head(midwest)
tail(midwest)
View(midwest)
dim(midwest)
str(midwest)
summary(midwest)

midwest <-rename(midwest,total = poptotal)
midwest <-rename(midwest,asian = popasian)
head(midwest)

midwest$humen<- midwest$asian/midwest$total * 100
hist(midwest$humen)
mean(midwest$humen)

midwest$mean <-ifelse(midwest$humen > 0.4872462,"large","small")
midwest$mean
table(midwest$mean)
qplot(midwest$mean)

library(ggplot2)
library(dplyr)
