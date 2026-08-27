advertising <- data.frame(
  Spend = c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100),
  Sales = c(15, 20, 25, 31, 35, 40, 45, 49, 54, 60)
)

# Build regression model
model <- lm(Sales ~ Spend, data = advertising)

# Display model
print(model)

# Summary
summary(model)

# Predict Sales
new_data <- data.frame(Spend = c(25, 75, 120))

prediction <- predict(model, newdata = new_data)

print(prediction)

# Regression plot
plot(
  advertising$Spend,
  advertising$Sales,
  main = "Advertising Spend vs Sales",
  xlab = "Spend",
  ylab = "Sales"
)

abline(model)
