n5 <- matrix(rnorm(50*5), nrow = 50)
n5

n20 <- matrix(rnorm(50*20), nrow = 50)
n20

n50 <- matrix(rnorm(50*50), nrow = 50)
n50

n200 <- matrix(rnorm(50*200), nrow = 50)
n200

n5means <- rowMeans(n5)
n5means

n20means <- rowMeans(n20)
n20means

n50means <- rowMeans(n50)
n50means

n200means <- rowMeans(n200)
n200means

par(mfrow=c(2,2))
hist(n5means, xlab = " ", prob=T, xlim = range(0:12), ylim = range(0, 0.2, 0.4, 0.6, 0.8), main = "n5", nclass=10)

hist(n20means, xlab = " ", prob=T, xlim = range(0:12), ylim = range(0, 0.2, 0.4, 0.6, 0.8), main = "n20", nclass=10)

hist(n50means, xlab = " ", prob=T, xlim = range(0:12), ylim = range(0, 0.2, 0.4, 0.6, 0.8), main = "n50", nclass=10)

hist(n200means, xlab = " ", prob=T, xlim = range(0:12), ylim = range(0, 0.2, 0.4, 0.6, 0.8), main = "n200", nclass=10)






