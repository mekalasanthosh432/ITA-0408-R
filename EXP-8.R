set.seed(10)

x <- rnorm(100, mean = 50, sd = 10)

print(round(x[1:10], 2))

count_above_50 <- sum(x > 50)

cat("Number of values greater than 50:", count_above_50)
