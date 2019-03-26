x <- c(1,2,3)
x
mean(x)
max(x)
min(x)
y<- mean(x)
y

str5 <- c("hello","world")
str5

paste(str5, collapse = " ")


x <-c("a","a","b","c")
x
qplot(x)
qplot(data = mpg, x=hwy)
qplot(data = mpg, x=cty)
qplot(data = mpg, x=drv,y=hwy)
qplot(data = mpg, x=drv,y=hwy)
qplot(data = mpg, x=drv,y=hwy,geom="boxplot",colour = drv)
g1<-80
g2<-60
g3<-70
g4<-50
g5<-90
grade <- c(g1,g2,g3,g4,g5)
mean(grade)
grade_mean<-mean(grade)
grade_mean

english <- c(90,80,60,70)
english

math <- c(50,60,100,20)
math

df_midterm <-data.frame(english,math)

df<- data.frame(JF =  c("A","B","C"),
                GG = c(1800,1500,3000),
                PMR = c(24,38,13))
df

mean(df$GG)

install.packages("readxl")
library(readxl)
df_exam<- read_excel("excel_exam.xlsx")

df_exam <-read_excel("c:/temp/git R/pjsr/excel_exam.xlsx")
df_exam
mean(df_exam$english)
mean(df_exam$science)

df_exam_nover <- read_excel("excel_exam_novar.xlsx",col_names = F)
df_exam_nover
df_exam_sheet <- read_excel("excel_exam_sheet.xlsx",sheet = 3)
df_exam_sheet

df_csv_exam <-read.csv("csv_exam.csv",stringsAsFactors = F)
df_csv_exam

head(df_csv_exam)
head(df_csv_exam,10)

tail(df_csv_exam)
tail(df_csv_exam,10)

View(df_csv_exam)

df_midterm <- data.frame(english =c(90,80,60,70),
                         math = c(50,60,100,20),
                         class = c(1,1,2,2))
df_midterm

write.csv(df_midterm,file ="df_midterm.csv")

save(df_midterm,file = "df_midterm.rda")

rm(df_midterm)
df_midterm
load("df_midterm.rda")
df_midterm

dim(df_csv_exam)
str(df_csv_exam)
summary(df_csv_exam)

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









