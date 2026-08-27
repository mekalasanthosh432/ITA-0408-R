# Vector
v <- c(10, 20, 30, 40)

# Matrix
m <- matrix(1:9, nrow = 3)

# Function
square <- function(x) {
  return(x * x)
}

# Create list
my_list <- list(
  Numbers = v,
  Matrix = m,
  Square_Function = square
)

print(my_list)

# Display individual contents
print(my_list$Numbers)
print(my_list$Matrix)
print(my_list$Square_Function(5))
