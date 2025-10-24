x <- c(2,3,5,6,7,8,10,11)

m <- function(theta) 
  {
    sum(
      (
        (1-(1-x) * theta[1]^theta[2] * log(theta[1]^theta[2]) - theta[1]^theta[2] - x * 
          log(theta[1]^theta[2])) - theta[1]^(2*theta[2]*x) * (1 + x*log(theta[1]^theta[2]) 
          - (x+1)*theta[1]^theta[2] * log(theta[1]^theta[2]) - theta[1]^theta[2]) ) 
      / 
        (
          n*theta[2]*(1-theta[1]^theta[2]) * (1-theta[1]^(2*theta[2]*x))
         )
    )
  }

n <- length(x)
p <- nlm(m, theta <- c(0.8,1), hessian = TRUE)

p


# Understand the interval you are working with; you want the minimum positive value ####

mean(x)
sum( (x - mean(x))^2)/8


v <- var(x)
s <- sqrt(v)
