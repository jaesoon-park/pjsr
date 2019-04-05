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