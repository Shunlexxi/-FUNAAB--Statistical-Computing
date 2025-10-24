# Importing Data

data <- readxl::read_excel(file.choose())
attach(data)

# Fit a linear model
model <- lm(x ~ treatment)
summary(model)

res = residuals(model)

# Shapiro 
shapiro.test(x=res)

library(car)
leveneTest(x ~ treatment)

ANOVA <- anova(model)
ANOVA
