# x is N(3) x K (3) Matrix
x <- matrix(c(1,2,1,1,1,1,2,1,3), ncol = 3, byrow = TRUE)
x

# t is N(3) x 1 Matrix
# theta2 = t ######
t <- matrix(c(1,1,2), ncol = 1)
t
tTranspose <- t(t)
t

xTIMESt <- x%*%t
xTIMESt

alpha <- matrix(c(1,1,1), ncol = 1, byrow = TRUE)
alpha


# parameters: Theta 1 = Beta, 2 =  #####

m <- function(theta)
{
  sum(-theta[1]*(alpha + (x%*%t))*(alpha + (x%*%t)))
}
 
p <- nlm(m, theta <- c(1), hessian = TRUE)

p


# sum(-theta[1]*(alpha + xTIMESt)*(alpha + xTIMESt)) ###
