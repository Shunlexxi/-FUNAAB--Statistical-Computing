data = read.csv(file.choose(), header = TRUE)
attach(data)

# Linear Model
model = lm(Yield~Block+Treatment)
summary(model)
#plot(model)

res = residuals(model)
# Test for Normality
shapiro.test(res)

# Test for Variance
library(car)
leveneTest(Yield, Block)
leveneTest(Yield, Treatment)

anova(model)
