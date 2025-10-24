# Read CSV Document
data <- read.csv("DiffTotal.csv")

# Displays Data
data
View(data)

# When unattached
mean(data$PCV)

# Attach
attach(data)

#means
mean(PCV)
mean(WBC)


# variance
var(WBC)
var(PCV)

# Histogram
hist(N)
hist(AGE)
hist(M, col = "blue", ylim = c(0,60))

# Correlation
cor(HB, PCV)
cor.test(HB, PCV)
cor(AGE, WBC)
cor.test(AGE, WBC)

# Regression 
lm(HB~PLATLETS)
y <-lm(HB~AGE)
y

# GEnerate Summary Statistics
summary(y)
summary(HB)

# Creating a List
z <- c(HB, WBC, N, L, E, M)
z

# Arrays (Matrix)
z1 <- array(z, dim = c(148,6))
z1

# Array multiplication
z1 * z1

# Transpose 
t(z1)

# Matrix Multiplication
z1 %*% t(z1)

# Maths Computation
(z1^2) - (2*z1)
