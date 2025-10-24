# Matrix ###########
A <- matrix(c(1,2,3,4,5,6), nrow = 2, byrow = TRUE)
A

B <- matrix(c(2,3,4,5,6,7), nrow = 2, byrow = TRUE)
B

## Addition #######
A+B

### Subtraction #######
B-A

#### Scalar Multiplication ####
3*A

#### Matrix Multiplication ####
C <- matrix(c(2,3,4,5,6,7), nrow = 2, byrow = TRUE)
C

D <- matrix(c(1,8,9,10,11,12), nrow = 3, byrow = TRUE)
D
C %*% D

#### Transpose ####
E <- matrix(c(1,0,2,2,1,0), nrow = 2, byrow = TRUE)
E
t(E)
