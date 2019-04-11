exam %>% arrange(desc(math))
exam %>% arrange(class,math)

mpg %>% filter (manufacturer == "audi") %>% 
  arrange(desc(hwy)) %>% 
  head(5)

