# Experiment 11: Read a CSV file and display its contents
# This program creates a small sample CSV first, then reads it.
sample_data <- data.frame(
  Name=c("Ram", "Ravi", "Sam"),
  Marks=c(80, 90, 75)
)
write.csv(sample_data, "student.csv", row.names=FALSE)

result <- read.csv("student.csv")
print(result)

# To read your own CSV file, use:
# result <- read.csv(file.choose())
# print(result)
