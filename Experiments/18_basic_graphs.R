# Experiment 18: Basic graphs using iris
data(iris)

boxplot(iris$Sepal.Length, main="Boxplot of Sepal Length",
        ylab="Sepal Length")
hist(iris$Sepal.Length, main="Histogram of Sepal Length",
     xlab="Sepal Length")
barplot(table(iris$Species), main="Species Count",
        xlab="Species", ylab="Count")
plot(1:10, type="l", main="Line Chart",
     xlab="X", ylab="Y")
plot(iris$Sepal.Length, iris$Petal.Length,
     main="Scatter Plot", xlab="Sepal Length",
     ylab="Petal Length")
