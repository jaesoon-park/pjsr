install.packages("XML")
library(XML)
Sys.setlocale("LC_ALL","English")
df <- readHTMLTable("http://lol.inven.co.kr/dataninfo/match/playerList.php",header = T)
str(df)

df <- df[[2]]
str(df)
View(df)

df <- df[,-c(1,2,5)]
names(df) <- c("name","cmp","result","k","d","a","kda","help")
str(df)
View(df)

df[,4:7] <- sapply(df[,4:7], function(a){as.numeric(as.character(a))})
df$name <- as.character(df$name)
df$help <-as.numeric(sub("%","",df$help))/100

str(df)
View(df)
temp <- as.data.frame(do.call(rbind,strsplit(df$name, ' (?=[^ ]+$)',perl = TRUE)))
str(temp)
df$name <-temp$V1
df$team <- temp$V2
View(df)
library(ggplot2)
ggplot(df,aes(x=team))+geom_bar(fill="dark blue")
mean.df<-as.data.frame(tapply(df$kda,df$team,mean))
mean.df$team <- rownames(mean.df)
names(mean.df) <- c("kda","team")
mean.df
ggplot(mean.df,aes(team,kda))+geom_bar(stat="identity")
