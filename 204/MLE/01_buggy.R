

MatAlpha <- matrix(c(1,1,1,1,1,1,1,1,1), nrow = 3, byrow = TRUE)
MatAlpha

MatT <- matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, byrow = TRUE)
MatT

MatX <- matrix(c(2,2,2,2,2,2,2,2,2), nrow = 3, byrow = TRUE)
MatT

MatAlpha + MatT

# parameters: delta = 1, Beta = 2, Theta = 3, .... 6
Constant <- 2
k <- 3

m <- function(theta)
{
  (1 + theta[1] *theta[2]*Constant*exp(-theta[2]*(MatAlpha + (theta[3]*MatT))) * 
     (MatAlpha + (theta[3]*MatT)) + theta[1]*(-1)^(k+1) * (theta[2]*Constant)^k * 
     prod(exp(-theta[2]*(MatAlpha + (theta[3]*MatX) * (MatAlpha + (theta[3]*MatX))))) + 
     theta[1]*(-1)^(k+1) * (theta[2]*Constant)^(k+1) * exp(-theta[2]*(MatAlpha + 
    theta[3] * MatT) * (MatAlpha + theta[3]*MatT)) * prod(exp(-theta[2] * 
      (MatAlpha + theta[3]*MatX) * (MatAlpha + (theta[3]*MatX))))
  )
}

result <- nlm(m, theta <- c(3,1), hessian = TRUE)
result
