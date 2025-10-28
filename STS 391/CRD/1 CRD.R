# Manual input
yeild <- c(29, 28, 29, 33.5, 31.5, 29, 26.5, 30, 48.5, 46.5, 49, 34.5,31)
fertilizer <- rep(c("A","A","A","B","B","B","C","C","D","D","D","E","E"))

farm <- data.frame(yeild, fertilizer)
farm

  
  # Importing Data
  data <- read.csv(file.choose())
  # or
  data <- read.csv(file.choose(), header= TRUE)
  attach (data)

# Fit a linear model
model <- lm(yeild ~ fertilizer)
summary(model)

res = residuals(model)

# Shapiro 

shapiro.test(x=res)

library(car)
leveneTest(yeild ~ fertilizer)

ANOVA <- anova(model, conf.level=.99)



# Example 2
no_of_days <- c(8,5,9,2,7,8,2,4,3,8,7,7,1,5,1,4,9,8,7,2,3)
hospital <- c(rep("A",7), rep("B",7),rep( "C",7))

dt <- data.frame(no_of_days, hospital)
dt              

mod <- lm(no_of_days ~ hospital)
summary(mod)

res2 <- residuals(mod)

shapiro.test(res2)

anova(mod)

# Decision Rule: If pvalue < alpha we reject Ho
