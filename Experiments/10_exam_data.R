# Experiment 10: Create and manipulate exam_data
exam_data <- data.frame(
  name=c("Ram", "Ravi", "Sam", "John"),
  score=c(80, 65, 90, 45),
  attempts=c(2, 3, 1, 4),
  qualify=c(TRUE, TRUE, TRUE, FALSE)
)
print(exam_data)

# Extract values
print(exam_data$name)
print(exam_data[1, ])
print(exam_data[, 2])

# Add a row
exam_data[nrow(exam_data) + 1, ] <- list("Arun", 75, 2, TRUE)

# Add a column
exam_data$grade <- c("A", "B", "A", "C", "B")

# Sort by score
exam_data <- exam_data[order(exam_data$score), ]
print(exam_data)

# Save in the current working directory
write.csv(exam_data, "exam_data.csv", row.names=FALSE)
cat("Saved as exam_data.csv in:", getwd(), "\n")
