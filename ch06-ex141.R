exam %>% select(math)
exam %>% select(english)
exam %>% select(class,math,english)
exam %>% select(-math)
exam %>% filter(class == 1) %>% select(english)
exam %>% 
  filter(class ==1) %>% 
  select(english)
exam %>% 
  select(id,math) %>% 
  head
exam %>% 
  select(id,math) %>% 
  head(10)

mpg_class <- mpg %>% 
  select(class,cty)
head(mpg_class)

mpg_class_suv <- mpg_class %>% filter(class == "suv")
mpg_class_compact <- mpg_class %>% filter(class == "compact")

mean(mpg_class_suv$cty)
mean(mpg_class_compact$cty)
