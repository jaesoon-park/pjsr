outlier <- data.frame(sex = c(1,2,1,3,2,1),
                      score = c(5,4,3,4,2,6))
outlier
table(outlier$sex)
table(outlier$score)
outlier$sex <- ifelse(outlier$sex == 3,NA,outlier$sex)
outlier
outlier$score <- ifelse(outlier$score > 5,NA,outlier$score)
outlier
outlier %>% 
  filter(!is.na(sex) & !is.na(score)) %>% 
  group_by(sex) %>% 
  summarise(mean_score = mean(score))

