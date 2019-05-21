ggplot(data = mpg,aes(x=displ,y = hwy))
ggplot(data = mpg,aes(x=displ,y = hwy)) + geom_point()
ggplot(data = mpg,aes(x=displ,y = hwy)) +
  geom_point() +
  xlim(3,6)+
  ylim(10,30)
ggplot(data = mpg,aes(x=cty,y = hwy)) + geom_point()
ggplot(data = midwest,aes(x=poptotal,y = popasian)) +
  geom_point() +
  xlim(0,500000)+
  ylim(0,10000)

df_mpg <- mpg %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy))
df_mpg

ggplot(data = df_mpg,aes(x = drv,y= mean_hwy)) + geom_col()
ggplot(data = df_mpg,aes(x = reorder(drv,-mean_hwy),y = mean_hwy)) + geom_col()

ggplot(data = mpg,aes(x = drv)) + geom_bar()
ggplot(data = mpg,aes(x = hwy)) + geom_bar()

df <- mpg %>% 
  filter(class == "suv") %>% 
  group_by(manufacturer) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  arrange(desc(mean_cty)) %>% 
  head(5)
ggplot(data = df,aes(x = reorder(manufacturer,-mean_cty),
                     y = mean_cty)) + geom_col()
ggplot(data = mpg,aes(x = class)) + geom_bar()
as.data.frame(ggplot2::economics)

ggplot(data = economics,aes(x = date, y = unemploy)) +
  geom_line()

ggplot(data = economics,aes(x = date, y = psavert)) +
  geom_line()

ggplot(data = mpg,aes(x = drv, y = hwy)) + geom_boxplot()

class_mpg <- mpg %>% 
  filter(class %in% c("compact","subcompact","suv"))
ggplot(data = class_mpg,aes(x = class,y=cty)) + geom_boxplot()



