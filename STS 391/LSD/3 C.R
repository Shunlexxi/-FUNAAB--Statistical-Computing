#EXAMPLE 1
# Data is inputted column-wise
yeild <- (257, 245, 182, 203, 231, )





# EXAMPLE 2
data2 = read.csv(file.choose(), header = TRUE)
data2
attach(data2)

# Linear Model: yield on row, col and trt
model2 = lm(yeild~row+column+treatment)
summary(model2)
res2 = residuals(model2)

# Test for Normality
shapiro.test(res2)

# Test for Homogeneity 
library(car)
leveneTest(yeild ~ row)
leveneTest(yeild ~ column)
leveneTest(yeild ~ treatment)

ANOVA = anova(model2)
ANOVA

