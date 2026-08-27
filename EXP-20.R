data(ChickWeight)

# Convert Diet to factor
ChickWeight$Diet <- factor(ChickWeight$Diet)

# Multiple regression
model <- lm(
  weight ~ Time + Diet,
  data = ChickWeight
)

# Model summary
summary(model)

# Predict weight
new_chick <- data.frame(
  Time = c(10, 20, 30),
  Diet = factor(
    c("1", "2", "3"),
    levels = levels(ChickWeight$Diet)
  )
)

predicted_weight <- predict(
  model,
  newdata = new_chick
)

print(predicted_weight)

# Actual vs predicted
actual <- ChickWeight$weight
predicted <- predict(model)

# Mean Squared Error
mse <- mean((actual - predicted)^2)

cat("Mean Squared Error:", mse, "\n")

# Root Mean Squared Error
rmse <- sqrt(mse)

cat("Root Mean Squared Error:", rmse)
