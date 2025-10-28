# Example 1 - RCBD

response = c(7.5, 7.0, 7.1, 7.4, 7.2, 6.7, 7.3, 7.0, 6.9, 7.6, 7.2, 6.8, 7.4, 7.1, 6.9)
method = rep(c("M1", "M2", "M3"), 5)
analyst = c(rep("1", 3), rep("2", 3), rep("3", 3), rep("4", 3), rep("5", 3))

data1A = data.frame(response, method, analyst)
data1A

  # option B
  data1B = read.csv(file.choose(), header = TRUE)
  attach(data1B)
  data1B

# Linear model
model1 = lm(response ~ method+analyst, data = data1)
summary(model1)

# Test for normality of error (follows normal)
error = residuals(model1)
shapiro.test(x = error)


# Test for equal variance among population
library(car)
leveneTest(response~analyst)
leveneTest(response~method)

# ANOVA TABLE
anova(model1)
# For method: There is significant variation



## =================================================EXAMPLE 2
data2 = read.csv(file.choose())
attach(data2)
data2

# test for normality
model2 = lm(Calorie~Feed+Breed)
summary((model2))

# Test for Homogeneity
res = residuals(model2)
shapiro.test(res)

leveneTest(Calorie~Feed, data = data2)
leveneTest(Calorie~Breed, data = data2)

anova(model2)

# Visual Inspection
plot(model1, 1) # Plot of homogeneity of variance
plot(model1, 2) # plot for normality


# ==============================EXAMPLE 3
yield_s = c(40.9, 40.6, 39.7, 38.8, 31.3, 40.9, 33.4, 41.7, 37.5, 41.0, 40.6, 39.2, 37.4, 39.5, 39.4, 39.2, 41.5, 29.2, 40.1, 38.6, 38.7, 32.2, 41.1, 35.8, 39.8, 40, 33.9, 38.4, 41.9, 39.8)

block = c(rep("1", 6), rep("2", 6), rep("3", 6), rep("4", 6), rep("5", 6))
treatment = c("C", "F", "E", "B", "A", "D", "A", "D", "B", "F", "E", "C", "B", "C", "D", "E", "F", "A", "D", "C", "E", "A", "F", "B", "C", "D", "A", "B", "E", "F")

data3 = data.frame(yield_s, block, treatment)
data3

# Linear model
model3 = lm(yield_s~treatment)
summary(model3)

# Test for normality
res3 = residuals(model3)
shapiro.test(res3)

# Test for homogeneity 
library(car)
leveneTest(yield_s~treatment)
leveneTest(yield_s~block)

anova(model3)
plot(model3)

