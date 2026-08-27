data(Titanic)

# Convert Titanic table to data frame
titanic_df <- as.data.frame(Titanic)

# Survival vs Class
survival_class <- xtabs(
  Freq ~ Class + Survived,
  data = titanic_df
)

print(survival_class)

# Bar chart
barplot(
  survival_class,
  beside = TRUE,
  legend = TRUE,
  main = "Survival vs Class",
  xlab = "Passenger Class",
  ylab = "Number of Passengers"
)

# Modify by gender
gender_survival <- xtabs(
  Freq ~ Sex + Survived,
  data = titanic_df
)

print(gender_survival)

barplot(
  gender_survival,
  beside = TRUE,
  legend = TRUE,
  main = "Survival by Gender"
)

# Age histogram
age_data <- rep(
  titanic_df$Age,
  titanic_df$Freq
)

hist(
  age_data,
  main = "Histogram of Titanic Age",
  xlab = "Age"
)
