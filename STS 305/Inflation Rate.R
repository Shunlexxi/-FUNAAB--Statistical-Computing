data <- read.csv("Inflation rate.csv")

data <- read.csv(file.choose())

attach(data)

hist(Inflation.rate)


hist(Inflation.rate,
     probability = TRUE, # In stead of frequency
     breaks = "FD", # For more breaks than the default
     col = "darkslategray4", border = "seashell3")


plot(density(Inflation.rate), col = "firebrick2", lwd = 3)
      # Add the kernel density estimate (-.5 fix for the bins)
      
axis(side=1, at=c(1:30))


x <- Inflation.rate + 30

new_points = 0.00286 * (17.5 *log(x-17.5) - x*log(x-17.5) + (x-17.5) + 17.5 * log(x-17.5) + x * log(x) - x) + 0.0222 * (22.5 * log(x-22.5) - x*log(x-22.5) + (x-22.5) + 22.5 * log(x-22.5) + x * log(x) - x)

hist(new_points)






data<-read.csv("Inflation rate.csv")
attach(data)
hist(data[,3])
n<-251
x<-data[,3]

m<-function(theta){(sum(log(theta[1])*(x*log(x)-theta[2]-(x-theta[3])*log(x-theta[2]))+theta[4]*(x*log(x)-theta[5]-(x-theta[6])*log(x-theta[5]))))}
optim(fn=m, par=c(0.2,0.1,3,0.08,0.24,2.2))

a= 2.996450e-14 
b= (-1.112312e-01+1)/2
c= 3.501806e+00 
d= 1.030480e-01
e= 3.994307e-01
f= 2.146934e+00

y= (a)*(x*log(x)-b-(x-c)*log(x-b))+d*(x*log(x)-e-(x-f)*log(x-e))
y
hist(y)
hist(x)

