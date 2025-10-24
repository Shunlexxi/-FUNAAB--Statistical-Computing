# VIF in r

#view first six lines of mtcars
head(mtcars)

#fit the regression model
model <- lm(mpg ~ disp + hp + wt + drat, data = mtcars)

#view the output of the regression model
summary(model)

print("Result indicates that the overall regression model is significant")

#load the car library
library(car)

#calculate the VIF for each predictor variable in the model
vif(model)
print("We can see that the VIF for both disp and wt are greater than 5, which is potentially concerning.")

#create vector of VIF values
vif_values <- vif(model)

#create horizontal bar chart to display each VIF value
barplot(vif_values, main = "VIF Values", horiz = TRUE, col = "steelblue")

#add vertical line at 5
abline(v = 5, lwd = 3, lty = 2)
