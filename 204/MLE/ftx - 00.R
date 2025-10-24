# Creating Matrices ####

MatT <- matrix(pnorm(rnorm(37)))
MatT

MatX <- matrix(pnorm(rnorm(185)), nrow = 37)
MatX

MatAlpha1 <- matrix(pnorm(rnorm(37)))
MatAlpha1

MatAlpha2 <- matrix(pnorm(rnorm(185)), nrow = 37)
MatAlpha2




## Declaring Constants ####
c <- 2
k <- 3

###function ####
# Parameters(theta) : 1 = Delta, 2 = Beta, 3 = Theta1, 4 = Theta2, 5 = Alpha1, 6 = Alpha2
m <- function(theta)
{
  sum( log(
    
    1 + (theta[1] * theta[2] * c * exp(-theta[2] * (theta[5] + (theta[3] * MatT))) * (theta[5] + (theta[3] + MatT))) +
      
      theta[1] * (-1)^(k+1) * (theta[2] * c)^k *
      
      
      prod(exp(-theta[2] * (theta[6] + (theta[4] * MatX)))) * (theta[6] + (theta[4] * MatX)) + 
      
      
      
      theta[1] * (-1)^(k+1) * (theta[2] * c)^(k+1) * 
      
      
      exp(-theta[2] * (theta[5] + (theta[3] * MatT))) * (theta[5] + (theta[3] * MatT)) * 
      
      
      prod(exp(-theta[2] * (theta[6] + (theta[4] * MatX))) * (theta[6] + (theta[4] * MatX)))
    
  ))
}

result <- nlm(m, c(0.1, 0.1, 0.1, 0.1, 0.1, 0.1), hessian = TRUE)
result
