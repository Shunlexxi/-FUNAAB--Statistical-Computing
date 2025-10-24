# This solution estimates 4 params
# uses Alpha[1 & 2] as matrices; All matrices are 3*3


# Creating Matrices ####

MatT <- matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, byrow = TRUE)
MatT

MatX <- matrix(c(2,2,2,2,2,2,2,2,2), nrow = 3, byrow = TRUE)
MatX

MatAlpha1 <- matrix(c(1,1,1,1,1,1,1,1,1), nrow = 3, byrow = TRUE)
MatAlpha1

MatAlpha2 <- matrix(c(2,2,2,2,2,2,2,2,2), nrow = 3, byrow = TRUE)
MatAlpha2



## Declaring Constants ####
c <- 2
k <- 3
p <- diag(1, 3, 3)
p

###function ####
# Parameters(theta) : 1 = 

m <- function(theta)
{
  sum( log(
    
    1 + (theta[1] * theta[2] * c * exp(-theta[2] * (MatAlpha1 + (theta[3] * MatT))) * (MatAlpha1 + (theta[3] + MatT))) +
      
      
      theta[1] * (-1)^(k+1) * (theta[2] * c)^k *
      
      
      prod(exp(-theta[2] * (MatAlpha2 + (theta[4] * MatX)))) * (MatAlpha2 + (theta[4] * MatX)) + 
      
      
      
      theta[1] * (-1)^(k+1) * (theta[2] * c)^(k+1) * 
      
      
      exp(-theta[2] * (MatAlpha1 + (theta[3] * MatT))) * (MatAlpha1 + (theta[3] * MatT)) * 
      
      
      prod(exp(-theta[2] * (MatAlpha2 + (theta[4] * MatX))) * (MatAlpha2 + (theta[4] * MatX)))
    
  ))
}

result <- nlm(m, c(2, 0.9, 1, 1), hessian = TRUE)
result



























# Trying nloptr
# library(nloptr)
# opts <- list("algorithm"="NLOPT_LD_LBFGS", "xtol_rel"=1.0e-8)
# x0 <- c(2, 0.9, 1, 1)
# res <- nloptr(x0 = x0, eval_f = m)
# res




# # Attempts #######
# e_one <- exp(MatAlpha1 + (2*MatT)) * (MatAlpha1 + (2+MatT))
# e_one
# 
# e_two <- sum(
#   prod(exp(MatAlpha2 + (5 * MatX) ) * (MatAlpha2 + (5 * MatX) ) )
# )
# e_two
# 
# # inf??###
# 
# u = c(1,2,3)
# sum(prod(u + 2)
# )
# 
# e_three <- exp(MatAlpha1 + (2*MatT)) * (MatAlpha1 + (2+MatT))
# e_three
# 
# 
# e_four <- 
#   prod(exp(MatAlpha2 + (5 * MatX) ) * (MatAlpha2 + (5 * MatX) ) )
#   
# e_four
# 
