# Create a sample data set
data <- rnorm(100)

# Plot the probability density function using density()
plot(density(data), main = "Probability Density Function (PDF)",
     xlab = "X", ylab = "Density")

# For duration data I assume Poisson distributed
data_pois <- rpois(500, 10) 

# Plot the probability density function using hist()
hist(data_pois,
     probability = TRUE, # In stead of frequency
     ##breaks = "FD", # For more breaks than the default
     col = "darkslategray4", border = "seashell3")

lines(density(data_pois), col = "firebrick2", lwd=3)

