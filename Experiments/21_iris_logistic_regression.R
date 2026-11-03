# Experiment 21: Multiclass logistic regression on iris
# install.packages("nnet") # Run once if needed
library(nnet)
data(iris)

set.seed(123)
index <- sample(seq_len(nrow(iris)), size=floor(0.8*nrow(iris)))
train <- iris[index, ]
test <- iris[-index, ]

model <- multinom(
  Species ~ Petal.Length + Petal.Width,
  data=train, trace=FALSE
)

pred <- predict(model, newdata=test)
cat("Predicted classes:\n")
print(pred)

cat("Confusion matrix:\n")
print(table(Actual=test$Species, Predicted=pred))

accuracy <- mean(pred == test$Species)
cat("Accuracy:", accuracy, "\n")
