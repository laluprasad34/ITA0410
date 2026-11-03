# Experiment 15: EDA on iris dataset
data(iris)
print(dim(iris))
print(summary(iris))
print(sapply(iris[1:4], sd))
print(quantile(iris$Sepal.Length))
print(aggregate(. ~ Species, data=iris, FUN=mean))

# Frequency table / pivot-style table
print(xtabs(~ Species + cut(Sepal.Width, breaks=3), data=iris))

# Categorize Sepal.Length
iris$Category <- cut(
  iris$Sepal.Length, breaks=3,
  labels=c("Short", "Medium", "Long")
)
print(table(iris$Category))
print(table(iris$Species, iris$Category))
