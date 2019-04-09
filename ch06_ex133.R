class1 <- exam %>% filter(class == 1)
class2 <- exam %>% filter(class == 2)
mean(class1$math)
mean(class2$math)

mpg <- as.data.frame(ggplot2::mpg)
mpg_displ1 <- mpg %>% filter(displ<= 4)
mpg_displ2 <- mpg %>% filter(displ>= 5)

mean(mpg_displ1$hwy)
mean(mpg_displ2$hwy)

mpg_audi <- mpg %>% filter (manufacturer == "audi")
mpg_toyota <- mpg %>% filter (manufacturer == "toyota")

mean(mpg_audi$cty)
mean(mpg_toyota$cty)

mpg_3data <- mpg %>% filter (manufacturer %in% c("chevrolet","ford","honda")) 
mean(mpg_3data$hwy)

