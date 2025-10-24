# Lab 2 ############

# Gamma Distribution ############
G <- seq(0, 2, by = 0.04)
plot(G, dgamma(G, shape=6), xlab="X", col="Red", main = "Gamma Distribution Graph")


# Geometric Distribution ############

Geo <-seq(1,20,by=1)
plot(Geo,dgeom(Geo,prob=.2), xlab="X", col="Red", main = "Geometric Distribution Graph")


# Beta Distribution ############
B <- seq(0,1,by=0.01)
plot(B,dbeta(B,shape1=2,shape2=5), xlab="X", col="Red", main = "Beta Distribution Graph")


# Poisson Distribution ############
P <- seq(0,20, by=1)
plot(P,dpois(P,5), xlab="X", col="Red", main = "Poission Distribution Graph")
