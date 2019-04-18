midwest <- as.data.frame(ggplot2::midwest)

midwest <- midwest %>% 
  mutate(midwest_child = (poptotal - popadults)/poptotal*100)
midwest %>% 
  arrange(desc(midwest_child)) %>% 
  select(county , midwest_child) %>% 
  head(5)
midwest <- midwest %>% 
  mutate(grade = ifelse(midwest_child >= 40,"large",
                        ifelse(midwest_child>=30,"middle","small")))
table(midwest$grade)

midwest %>% 
  mutate(midwest_asian = (popasian/poptotal)*100) %>% 
  arrange(midwest_asian) %>% 
  select(state,county,midwest_asian) %>% 
  head(10)
