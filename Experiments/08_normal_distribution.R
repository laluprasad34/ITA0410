# Experiment 8: Normal random numbers and occurrence counts
set.seed(123)
x <- rnorm(100, mean=50, sd=10)
print(x)
cat("Rounded-value occurrence counts:\n")
print(table(round(x)))
