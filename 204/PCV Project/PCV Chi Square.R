data <- read.csv("DiffTotal.csv")

data

attach(data)

cor(HB, N)
cor.test(HB, N)


t.test(HB, N)


mean(HB)

mean(N)


chisq.test(LAB.NO, AGE_GROUP)
