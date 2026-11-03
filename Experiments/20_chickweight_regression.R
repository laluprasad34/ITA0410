# Experiment 20: Multiple regression using ChickWeight
data(ChickWeight)
ChickWeight$Diet <- factor(ChickWeight$Diet)

model <- lm(weight ~ Time + Diet, data=ChickWeight)
print(summary(model))

new_data <- data.frame(
  Time=c(10, 20, 30),
  Diet=factor(c("1", "2", "3"), levels=levels(ChickWeight$Diet))
)
prediction <- predict(model, newdata=new_data)
print(prediction)

predicted_all <- predict(model, newdata=ChickWeight)
actual <- ChickWeight$weight
MAE <- mean(abs(actual - predicted_all))
MSE <- mean((actual - predicted_all)^2)
cat("Mean Absolute Error:", MAE, "\n")
cat("Mean Squared Error:", MSE, "\n")
