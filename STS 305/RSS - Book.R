library("RSSampling")
library("LearnBayes")

## Imperfect ranking example for interested (X) and concomitant (Y) variables 
## from multivariate normal dist.

mu <- c(10, 8)
variance <- c(5, 3)
rho = seq(0, 0.9, 0.1)
se.x = mse.x = numeric()

##repeatsize = 10000

repeatsize = 100

for (i in 1:length(rho)) { 
  set.seed(1)
  a <- matrix(c(1, rho[i], rho[i], 1), 2, 2)
  v <- diag(variance)
  Sigma <- v%*%a%*%v
  
  #changed to 100
  x <- rmnorm(100, mu, Sigma)
  xx <- as.numeric(x[,1])
  xy <- as.numeric(x[,2])
  
  for (j in 1:repeatsize) {
    set.seed(j)
    samplex = con.Mrss(xx, xy, m = 5, r = 10, type = "r", sets = FALSE,
                       concomitant = FALSE)$sample.x
    se.x[j] = (mean(samplex)-mu[1])^2
  }
  
  mse.x[i] = sum(se.x)/repeatsize
}

plot(rho[-1], mse.x[-1], type = "o", lwd = 2,
     main = "MSE values based on increasing correlation levels",
     xlab = "corr.coef.", ylab = "MSE",  cex = 1.5, xaxt = "n")

axis(1, at = seq(0.1, 0.9, by = 0.1))
