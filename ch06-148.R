exam %>% summarise(mean_mth = mean(math))
exam %>% 
  group_by(class) %>% 
  summarise(mean_math=mean(math))
exam %>% 
  group_by(class) %>% 
  summarise(mean_math = mean(math),
            sum_math= sum(math),
            median_math = median(math),
            n = n())
mpg %>% 
  group_by(manufacturer,drv) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  head(10)

mpg %>% 
  group_by(manufacturer) %>% 
  filter(class == "suv") %>% 
  mutate(tot = (cty + hwy)/2) %>% 
  summarise(mean_tot = mean(tot)) %>% 
  arrange(desc(mean_tot)) %>% 
  head(5)
