# Importing from Excel
FemaleConc = readxl::read_xlsx(file.choose())
attach(FemaleConc)

MaleConc = readxl::read_xlsx(file.choose())
attach(MaleConc)

FemaleTime = readxl::read_xlsx(file.choose())
attach(FemaleTime)

MaleTime = readxl::read_xlsx(file.choose())
attach(MaleTime)


# Using split
data = read.csv(file.choose())
x = split(data, data$Gender)
male = x$M
female = x$F

hist(male$Concentration)
plot(density(male$Concentration), col = "firebrick2", lwd =2)


#Histogram 1
hist(FemaleConc$Concentration, main="Histogram of Female Concentration")
plot(density(FemaleConc$Concentration), col = "firebrick2", lwd =2)


#Histogram 2

hist(MaleConc$Concentration, main="Histogram of Male Concentration")
plot(density(MaleConc$Concentration), col = "firebrick2", lwd = 2)

#Histogram 3

hist(FemaleTime$`Time(hrs)`, main="Histogram of Female Time")
plot(density(FemaleTime$`Time(hrs)`), col = "firebrick2", lwd = 2)

#Histogram 4

hist(MaleTime$`Time(hrs)`, main="Histogram of Male Time")
plot(density(MaleTime$`Time(hrs)`), col = "firebrick2", lwd = 3)
