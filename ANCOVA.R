# Example 1 (Creating a dataset)
data1 <- data.frame(
  response = c(22, 27, 23, 20, 25, 30, 28, 24, 33, 26),
  treatment = factor(rep(c("A", "B"), each = 5)),  # Categorical variable
  covariate = c(10, 12, 11, 9, 14, 15, 13, 12, 16, 15)  # Continuous co-variate
)

model1 <- aov(response ~ treatment + covariate, data = data1)

# Summarizing the ANCOVA results
summary(model1)


# Example 2 (Import data)
data2 <- read.csv(file.choose())
attach(data2)


model2 <- aov(Test.Score ~ IQ + Teaching.Method, data = data2)
summary(model2)

# Test for interaction (homogeneity of slopes)
interaction_model <- aov(Test.Score ~ IQ * Teaching.Method, data = data2)
summary(interaction_model)


# Visualizing results
library(ggplot2)
ggplot(data, aes(x = covariate, y = response, color = treatment)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "ANCOVA: Response by Covariate and Treatment")
