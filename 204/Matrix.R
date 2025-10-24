# Matrix #############

##Syntax: matrix(data=c(comma separated), nrow=#, ncol=#, byrow=FALSE (default)) ####
matrix(data = c(1,2,3,4,5,6,7,8), ncol=2)

matrix(data = c(1,2,3,4,5,6,7,8,9,10), nrow=1)

t <- matrix(data = c(1,2,3,4,5,6,7,8,9,10), nrow=10)
t

x <- matrix(data = c(1,10,5,6,11,4,3,2,4,5,6,7,9,4,5,6,7,9,1,3), ncol=5)
x

z <- matrix(data = c(1,10,5,6,11,4,3,2,4,5,6,7,9,4,5,6,7,9,1,3,4), ncol=3, byrow = TRUE)
z


y <- c(1,2,3,4,5,6)
q <- as.matrix(y)
is.matrix(q)
is.matrix(z)
