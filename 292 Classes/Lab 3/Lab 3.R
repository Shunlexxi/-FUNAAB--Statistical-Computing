## Creating a Data Frame ####

Sno <- c(seq(1:10))

Sex <- c(rep("Male", 5), rep("Female", 5))

Age <- c(21, 43, 83, 22, 60, 16, "NA", 80, 92, "NA")

IQ <- c(120, "NA", 135, 150, 92, 130, 150, "NA", 84, 70)

Dep <- c("Yes", "No", "No", "No", "Yes", "Yes", "Yes", "Yes", "No", "No")

Health <- c("Good", "Very Good", "Average", "Very Poor", "Poor", "Poor", "Very Good", "Very Good", "Average", "Poor")

Weight <- c(150, 130, 160, 135, 140, 110, 110, 156, 165, 150)

Height <- c(1.75, 1.82, 1.70, 1.72, 1.73, 1.6, 1.5, 1.89, 1.49, 15)


BMI <- c((150/1.75), (130/1.82), (160/1.70), (135/1.72), (140/1.73), (110/1.6), (110/1.5), (156/1.89), (165/1.49), (150/15))  
# or BMI <- c(85.7, 71.4, 94.1, 78.5, 80.9, 68.8, 73.3, 82.5, 110.7, 10)

Obesity <- c(rep("Yes", 9), "No")

data <- data.frame(SNo = Sno, Sex = Sex, Age = Age, IQ = IQ, Dep = Dep, Health = Health, Weight = Weight, Height = Height, BMI = BMI, Obesity = Obesity)

data

knitr::kable(data)

summary(Weight)
summary(Height)
summary(BMI)
