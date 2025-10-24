mat <- matrix (c(2,3,4,5), nrow=2, ncol=2)
mat

oneMatrix <- matrix(c(1,1,1,1,1,1,1,1,1), nrow = 3, ncol = 3)
oneMatrix

oneMatrix1 <- matrix(1, nrow=3, ncol=3)
oneMatrix1

m <- matrix(c(1,2,3,4,5,6,7), nrow=3, ncol = 3)
m

mylist <- list("Tobi", "Femi", "Bola", 1, 5, "Dave")
mylist

## Creating a Data Frame ####
Sno <- c(seq(1:10))
Sex <- c(rep("Male", 5), rep("Female", 5))
Age <- c(21, 43, 83, 22, 60, 16, "NA", 80, 92, "NA")
IQ <- c(120, "NA", 135, 150, 92, 130, 150, "NA", 84, 70)
Dep <- c("Yes", "No", "No", "No", "Yes", "Yes", "Yes", "Yes", "No", "No")
Health <- c("Good", "Very Good", "Average", "Very Poor", "Poor", "Poor", "Very Good", "Very Good", "Average", "Poor")
Weight <- c(150, 130, 160, 135, 140, 110, 110, 156, 165, 150)
data <- data.frame(SNo = Sno, Sex = Sex, Age = Age, IQ = IQ,Dep = Dep, Health = Health, Weight = Weight)
data

knitr::kable(data)

avgWeight <- mean(Weight)
avgWeight

summary(Weight)
