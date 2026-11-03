# Experiment 7: Factors, random integers and FizzBuzz
# A. Factors of a number
n <- 24
cat("Factors of", n, ":\n")
for (i in 1:n) {
  if (n %% i == 0) print(i)
}

# B. Ten random integers from -50 to 50
set.seed(123)
random_numbers <- sample(-50:50, 10)
print(random_numbers)

# C. FizzBuzz from 1 to 100
for (i in 1:100) {
  if (i %% 3 == 0 && i %% 5 == 0) {
    print("FizzBuzz")
  } else if (i %% 3 == 0) {
    print("Fizz")
  } else if (i %% 5 == 0) {
    print("Buzz")
  } else {
    print(i)
  }
}
