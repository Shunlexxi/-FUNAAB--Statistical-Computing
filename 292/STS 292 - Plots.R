x1 <- runif(100)

x1

x2 <- rnorm(100,0.5,0.1)
x2

x3 <- runif(100,2,3)
x3

y1 <- sqrt(x1) + rnorm(100,0,0.05)
y2 <- sqrt(x2) + rnorm(100,0,0.05)
y3 <- sqrt(x3) + rnorm(100,0,0.05)

plot(x1,y1,xlim=c(0,3), ylim=c(0,3))

rug(x1, side = 1)
rug(x2, side = 2)

points(x2,y2, pch=24, col="blue")

rug(x2, side=1, col="blue")
rug(y2, side=2, col="blue")


points(x3,y3, pch=22, col="red")
rug(x3, side=1, col="red")
rug(y3, side=2, col="red")

# Regression
lm1 = lm(y1~x1)
lm2 = lm(y2~x2)
lm3 = lm(y3~x3)

lm1
lm2
lm3

abline(lm1$coefficients)
abline(lm2$coefficients)
abline(lm3$coefficients)

x.all = c(x1, x2, x3)
y.all = c(y1, y2, y3)
lm.all = lm(y.all ~ x.all)
abline(lm.all$coefficient, lty=2)
curve(sqrt(x), col="green", add=TRUE)

abline(a=1, b=0.2, col="pink")

# Example 2 ####
library(lattice)
library(MASS)

x.z = mvrnorm(100, c(0,0), matrix(c(1,0.1,0.1,1), nrow = 2))
x.z

y = x.z[ ,1] + x.z[ ,2] + rnorm(100, 0, 0.1)
y

cloud(y~x.z[ ,1] * x.z[ ,2], xlab = "x", ylab = "y", zlab = "z")

