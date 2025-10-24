# Install the car package if not already installed
#if (!require(car))install.packages("car")

# Load the car package
library(car)

# Entering Data
fertilizer <- c(rep("A", 3), rep("B", 3), rep("C", 3))
plant_growth <- c(10, 12, 15, 18, 20, 22, 25, 28, 30)

# Combine data into a data frame
data <- data.frame(fertilizer, plant_growth)

# Importing Data
data <- read.csv(file.choose())
attach(data)


# Perform Levene's Test
leveneTest(plant_growth ~ fertilizer, data = data, center = mean)


# ================
model <- lm(plant_growth ~ fertilizer)
model
plot(model)
plot(model$residuals)

ANOVA <- anova(model)
ANOVA

