data(USArrests)

# Summary
print(summary(USArrests))

# State with largest rape arrests
max_rape_state <- rownames(USArrests)[which.max(USArrests$Rape)]
cat("State with largest rape rate:", max_rape_state, "\n")

# Maximum and minimum Murder
cat("Maximum Murder:", max(USArrests$Murder), "\n")
cat("Minimum Murder:", min(USArrests$Murder), "\n")

# Correlation
print(cor(USArrests))

# States above median Assault
median_assault <- median(USArrests$Assault)

above_median <- USArrests[
  USArrests$Assault > median_assault,
]

print(above_median)

# Bottom 25% Murder
q25 <- quantile(USArrests$Murder, 0.25)

bottom_25 <- USArrests[
  USArrests$Murder <= q25,
]

print(bottom_25)

# Histogram
hist(
  USArrests$Murder,
  main = "Histogram of Murder Rates",
  xlab = "Murder Rate"
)

# Density plot
plot(
  density(USArrests$Murder),
  main = "Density Plot of Murder"
)

# Scatterplot
plot(
  USArrests$Murder,
  USArrests$Assault,
  main = "Murder vs Assault",
  xlab = "Murder",
  ylab = "Assault"
)

# Bar graph
barplot(
  USArrests$Murder,
  names.arg = rownames(USArrests),
  las = 2,
  main = "Murder Rates by State"
)
