data(iris)

# Dimensions
print(dim(iris))

# Summary
print(summary(iris))

# Standard deviation
print(sapply(iris[, 1:4], sd))

# Quantiles
print(sapply(iris[, 1:4], quantile))

# Grouping by Species
species_mean <- aggregate(
  iris[, 1:4],
  by = list(Species = iris$Species),
  FUN = mean
)

print(species_mean)

# Pivot table
pivot <- with(iris, table(Species))
print(pivot)

# Create Sepal.Length categories
iris$Sepal_Category <- cut(
  iris$Sepal.Length,
  breaks = c(4, 5, 6, 7, 8),
  labels = c("Short", "Medium", "Long", "Very Long")
)

print(table(iris$Sepal_Category))
