install.packages("ggplot2")
library(ggplot2)
mpg <-as.data.frame(ggplot2::mpg)
mpg
head(mpg)
tail(mpg)
str(mpg)
View(mpg)
summary(mpg)

install.packages("dplyr")
library(dplyr)

mpg

df_raw <- data.frame(var1 = c(1,2,1),
                     var2 = c(2,3,2))
df_raw
df_new <- df_raw
df_new
df_new <- rename(df_new,v2 = var2)
df_new
df_new <- rename(df_new,v1 = var1)
df_new

mpg_new <-mpg
mpg_new <- rename(mpg_new,city = cty)
mpg_new <- rename(mpg_new,highway = hwy)
head(mpg_new)

df_raw
df_raw$var_sum <-df_raw$var1 + df_raw$var2
df_raw
df_raw$var_mean <- (df_raw$var_sum)/2
df_raw

mpg$total <-(mpg$cty + mpg$hwy)/2

mean(mpg$total)
summary(mpg$total)
hist(mpg$total)

mpg$test <- ifelse(mpg$total >= 20,"pass","fail")
table(mpg$test)
mpg$grade <- ifelse(mpg$total >= 30, "A",
                    ifelse(mpg$total >= 20, "B","C"))

head(mpg,20)
table((mpg$grade),(mpg$total))
qplot(mpg$total)
qplot(mpg$grade)

mpg$grade2 <- ifelse(mpg$total >= 30,"A",
                     ifelse(mpg$total >= 25, "B",
                            ifelse(mpg$total >= 20, "C","D")))
