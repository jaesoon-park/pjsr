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
