#Loading Data
df <- May_2013_Online_Dating_CSV

#Loading libraries
library(ggplot2)
# Gender of the respondents
df$sex <- as.factor(df$sex)
summary(df$sex)

gender <- ggplot(data = df, aes(x = sex, fill = sex)) + 
  geom_bar() + 
  scale_x_discrete(labels = c("1" = "Male", "2" = "Female")) +
  labs(x = "Gender", y = "Count", title = "Gender of the Respondents")

print(gender)
