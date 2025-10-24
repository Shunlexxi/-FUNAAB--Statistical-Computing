# Load Library 
library('nloptr')

# f(x)
eval_f <- function(x)
{
  return ( 100 * (x[2] - x[1] * x[1])^2 + (1 - x[1])^2 )
}

# grad(x)
eval_grad_f <- function(x) {
  return( c( -400 * x[1] * (x[2] - x[1] * x[1]) - 2 * (1 - x[1]),
             200 * (x[2] - x[1] * x[1]) ) )
}

# Initial Values 
x0 <- c( -1.2, 1 )


opts <- list("algorithm"="NLOPT_LD_LBFGS",
             "xtol_rel"=1.0e-8)


res <- nloptr( x0=x0,
               eval_f=eval_f,
               eval_grad_f=eval_grad_f,
               opts=opts)


print(res)
