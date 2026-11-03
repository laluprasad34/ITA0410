# Experiment 19: Simple linear regression (sample advertising data)
# Replace this sample data with the real Advertising dataset if supplied.
advertising <- data.frame(
  Spend=c(10, 20, 30, 40, 50, 60, 70, 80),
  Sales=c(15, 25, 35, 40, 50, 60, 65, 75)
)

model <- lm(Sales ~ Spend, data=advertising)
print(summary(model))

new_data <- data.frame(Spend=45)
prediction <- predict(model, newdata=new_data)
print(prediction)

plot(advertising$Spend, advertising$Sales,
     xlab="Spend", ylab="Sales", main="Sales vs Spend")
abline(model, col="red", lwd=2)
