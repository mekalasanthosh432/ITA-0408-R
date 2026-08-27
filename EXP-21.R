# Load iris dataset
data(iris)

# Set seed for reproducibility
set.seed(123)

# Number of observations
n <- nrow(iris)

# Randomly select 80% for training
train_index <- sample(
  1:n,
  size = 0.80 * n
)

# Create training and testing data
train_data <- iris[train_index, ]
test_data <- iris[-train_index, ]

# Display dimensions
cat("Training data:", dim(train_data), "\n")
cat("Testing data:", dim(test_data), "\n")

# Build logistic regression model
model <- glm(
  Species ~ Petal.Length + Petal.Width,
  data = train_data,
  family = binomial
)

# Predict probabilities
prob <- predict(
  model,
  newdata = test_data,
  type = "response"
)

# Convert probabilities into classes
predicted <- ifelse(
  prob > 0.5,
  "virginica",
  "not_virginica"
)

# Actual values
actual <- ifelse(
  test_data$Species == "virginica",
  "virginica",
  "not_virginica"
)

# Confusion matrix
confusion_matrix <- table(
  Actual = actual,
  Predicted = predicted
)

print(confusion_matrix)

# Accuracy
accuracy <- mean(predicted == actual)

cat("Accuracy:", accuracy, "\n")

# Percentage accuracy
cat(
  "Accuracy percentage:",
  accuracy * 100,
  "%\n"
)
