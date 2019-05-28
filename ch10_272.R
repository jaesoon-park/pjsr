install.packages("rJava")
install.packages("memoise")
install.packages("KoNLP")
install.packages("stringr")
install.packages("wordcloud")
library(KoNLP)
library(dplyr)
library(stringr)
library(wordcloud)
library(RColorBrewer)
useNIADic()

txt <- readLines("hiphop.txt")
head(txt)
txt <- str_replace_all(txt,"\\W"," ")
extractNoun("대한민국의 영토는 한반도와 그 부속도서로 한다")

nouns <- extractNoun(txt)
wordcount <-table(unlist(nouns))
df_word <- as.data.frame(wordcount,stringsAsFactors = F)
df_word <- rename(df_word,
                  word = Var1,
                  freq = Freq)
df_word <- filter(df_word,nchar(word) >= 2)
top_20 <- df_word %>% 
  arrange(desc(freq)) %>% 
  head(20)
top_20
df_word
pal <- brewer.pal(8,"Dark2")
set.seed(1234)
wordcloud(words = df_word$word,
          freq = df_word$freq,
          min.freq = 2,
          max.words =  200,
          random.order = F,
          rot.per = .1,
          scale = c(4,0.3),
          colors = pal)
pal <- brewer.pal(9,"Blues")[5:9]
set.seed(1234)
wordcloud(words = df_word$word,
          freq = df_word$freq,
          min.freq = 2,
          max.words =  200,
          random.order = F,
          rot.per = .1,
          scale = c(4,0.3),
          colors = pal)
