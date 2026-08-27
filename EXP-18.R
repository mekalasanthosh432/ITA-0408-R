boxplot(
  iris$Sepal.Length,
  main = "Boxplot of Sepal Length",
  ylab = "Sepal Length"
)

hist(
  iris$Sepal.Length,
  main = "Histogram of Sepal Length",
  xlab = "Sepal Length"
)

barplot(
  table(iris$Species),
  main = "Number of Iris Species",
  xlab = "Species",
  ylab = "Count"
)

x <- 1:10
y <- x^2

plot(
  x, y,
  type = "l",
  main = "Line Chart",
  xlab = "X",
  ylab = "Y"
)

plot(
  iris$Sepal.Length,
  iris$Petal.Length,
  main = "Sepal Length vs Petal Length",
  xlab = "Sepal Length",
  ylab = "Petal Length"
)
