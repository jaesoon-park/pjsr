summary(iris)
View(iris)

df_iris <- iris[,-5]
df_group <- iris[,5]


pca_df <- prcomp(df_iris,
                 center = T,
                 scale. = T)
pca_df
plot(pca_df,
     type = "l")
summary(pca_df)

install.packages("rgl")
install.packages("devtools")

library(devtools)
library(rgl)
library(devtools)
install_github("vqv/ggbiplot")
library(ggbiplot)


gg_df <-ggbiplot(pca_df,
                 choices = c(1,2),
                 obs.scale = 1,
                 var.scale = 1,
                 groups = df_group,
                 ellipse = TRUE,
                 circle = TRUE)
gg_df <- gg_df+scale_color_discrete(name='')
gg_df <- gg_df+theme(legend.direction = 'horizontal',
                     legend.position = 'top')
print(gg_df)






