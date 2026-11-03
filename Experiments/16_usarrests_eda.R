# Experiment 16: EDA on USArrests
data(USArrests)
print(summary(USArrests))

cat("State with largest rape arrest rate:\n")
print(rownames(USArrests)[which.max(USArrests$Rape)])

cat("Maximum and minimum murder rates:\n")
print(max(USArrests$Murder))
print(min(USArrests$Murder))

cat("Correlation matrix:\n")
print(cor(USArrests))

cat("States above median Assault:\n")
print(USArrests[USArrests$Assault > median(USArrests$Assault), ])

q <- quantile(USArrests$Murder, 0.25)
cat("States in bottom 25% for Murder:\n")
print(USArrests[USArrests$Murder <= q, ])

hist(USArrests$Murder, main="Murder Rates", xlab="Murder arrests")
plot(density(USArrests$Murder), main="Density of Murder Rates")
plot(USArrests$Assault, USArrests$Murder,
     xlab="Assault", ylab="Murder", main="Assault vs Murder")
barplot(USArrests$Murder, names.arg=rownames(USArrests),
        las=2, main="Murder Rates by State", cex.names=0.5)
