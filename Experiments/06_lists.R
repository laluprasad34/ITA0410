# Experiment 6: List containing vectors, matrix and function
my_list <- list(
  numbers=c(10, 20, 30),
  names=c("Ram", "Ravi", "Sam"),
  marks=matrix(1:9, nrow=3),
  square=function(x) x*x
)
print(my_list)
print(my_list$numbers)
print(my_list$names)
print(my_list$marks)
print(my_list$square(5))
