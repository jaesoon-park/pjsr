exam %>% 
  mutate(total = math + english + science) %>% 
  head
exam %>% 
  mutate(total = math + english + science,
         (mean = math + english + science)/3) %>% 
  head
exam %>% 
  mutate(test = ifelse(science >= 60,"pass","fail")) %>% 
  head
exam %>% 
  mutate(total = math + english +science) %>% 
  arrange(total) %>% 
  head
mpg_capy <- mpg
mpg_capy <-mpg_capy %>% 
  mutate(total = cty + hwy) %>% 
  head
mpg_capy <-mpg_capy %>% 
  mutate(total = cty + hwy,
         mean = (total/2)) %>% 
  head
mpg_capy %>% 
  arrange(desc(mean)) %>% 
  head(3)

mpg %>% 
  mutate(total = cty + hwy,
         mean = (total/2)) %>% 
  arrange(desc(mean)) %>% 
  head(3)
