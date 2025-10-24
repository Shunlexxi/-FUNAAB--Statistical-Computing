# Exercise 1: Proof that Population Mean = Sample Mean ####################

pop <- c(38,33,94,26,67,54,20,82,44,24)

PopMean <- mean(c(38,33,94,26,67,54,20,82,44,24))


nASamples <- replicate(100, mean(sample(pop)))

nASamples

nASample <- mean(nASamples)

PopMean
nASample

PopMean - nASample
