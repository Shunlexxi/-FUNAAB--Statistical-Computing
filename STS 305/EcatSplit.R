ecat_data = read.csv(file.choose())
ecat_data

x = split(ecat_data, ecat_data$Gender)
male = x$M
female = x$F

hist(male$Concentration)
plot(density(male$Concentration), col = "firebrick2", lwd =2)

hist(male$Time.hrs.)
plot(density(male$Time.hrs.), col = "firebrick2", lwd =2)

hist(female$Time.hrs.)
plot(density(female$Time.hrs.), col = "firebrick2", lwd =2)

hist(female$Concentration)
plot(density(female$Concentration), col = "firebrick2", lwd =2)



prep<-split(ecat_data, f=ecat_data$Preparation)
A <- prep$`Drug A`
B <- prep$`Drug B`
C <- prep$`Drug C`
D <- prep$`Drug D`
S <- prep$standard
conc_A<-A$Concentration
conc_B<-B$Concentration
conc_C<-C$Concentration
conc_D<-D$Concentration
Conc_S<-S$Concentration
t.test(conc_A,Conc_S, conf.level = 0.99)
t.test(conc_B,Conc_S, conf.level = 0.99)
t.test(conc_C,Conc_S, conf.level = 0.99)
t.test(conc_D,Conc_S, conf.level = 0.99)






A<-matrix(data = conc_A,nrow = 8)
S<-matrix(data =Conc_S ,nrow = 8)
B<-matrix(data=conc_B,nrow=8)
C<-matrix(data=conc_C,nrow=8)
D<-matrix(data=conc_D,nrow=8)
result_A <- hotelling.test(A, S)
result_B <- hotelling.test(B, S)
result_C <- hotelling.test(C, S)
result_D <- hotelling.test(D, S)
t_squared_A <- result_A$statistic
p_value_A <- result_A$pval
p_value_A 
