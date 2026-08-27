exam_data <- data.frame(
  name = c("Anu", "Bala", "Chitra", "David", "Esha"),
  score = c(85, 70, 92, 60, 78),
  attempts = c(1, 2, 1, 3, 2),
  qualify = c("yes", "yes", "yes", "no", "yes")
)

# Display
print(exam_data)

# Extract score column
print(exam_data$score)

# Extract first row
print(exam_data[1, ])

# Add new column
exam_data$grade <- c("A", "B", "A", "C", "B")

# Add new row
exam_data[nrow(exam_data) + 1, ] <-
  c("Fahad", 88, 1, "yes", "A")

print(exam_data)

# Sort by score
sorted_data <- exam_data[order(-as.numeric(exam_data$score)), ]

print(sorted_data)

# Save to CSV file
write.csv(exam_data, "exam_data.csv", row.names = FALSE)

cat("File saved successfully")
