x <- c(1,5,3,7,8,9,10,7,22,13,17,24,21,32,18,11,12,4,20,19)
#x <- rnorm(20)
n <- length(x)


lamda <- 0.1

#lamda <- seq(0.1, 0.9, 0.1)

for (i in x) {
  y <- ((x^lamda) - 1)/(lamda * ((prod(x))^(1/n))^(lamda - 1))
  
}

varY1 <- var(y)
varY1


lamda <- 0.2

for (i in x) {
  y <- ((x^lamda) - 1)/(lamda * ((prod(x))^(1/n))^(lamda - 1))
  
}

varY2 <- var(y)
varY2


lamda <- 0.3

for (i in x) {
  y <- ((x^lamda) - 1)/(lamda * ((prod(x))^(1/n))^(lamda - 1))
  
}

varY3 <- var(y)
varY3


lamda <- 0.4

for (i in x) {
  y <- ((x^lamda) - 1)/(lamda * ((prod(x))^(1/n))^(lamda - 1))
  
}

varY4 <- var(y)
varY4


lamda <- 0.5

for (i in x) {
  y <- ((x^lamda) - 1)/(lamda * ((prod(x))^(1/n))^(lamda - 1))
  
}

varY5 <- var(y)
varY5



lamda <- 0.6

for (i in x) {
  y <- ((x^lamda) - 1)/(lamda * ((prod(x))^(1/n))^(lamda - 1))
  
}

varY6 <- var(y)
varY6


lamda <- 0.7

for (i in x) {
  y <- ((x^lamda) - 1)/(lamda * ((prod(x))^(1/n))^(lamda - 1))
  
}

varY7 <- var(y)
varY7


lamda <- 0.8

for (i in x) {
  y <- ((x^lamda) - 1)/(lamda * ((prod(x))^(1/n))^(lamda - 1))
  
}

varY8 <- var(y)
varY8



lamda <- 0.9

for (i in x) {
  y <- ((x^lamda) - 1)/(lamda * ((prod(x))^(1/n))^(lamda - 1))
  
}

varY9 <- var(y)
varY9


vars <- c(varY1,varY2,varY3,varY4,varY5,varY6,varY7,varY8,varY9)
lamda <- seq(0.1, 0.9, 0.1)

plot(lamda, vars, main="Plot of Lamda against Var(Y)", lwd=3, col = "firebrick2", xlim = c(0,0.9))

lines(lamda, vars, lwd=3, col="darkslategray4")

axis(side = 1, at=c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0))

