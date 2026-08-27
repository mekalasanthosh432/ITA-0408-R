values <- 1:12

my_array <- array(
  values,
  dim = c(2, 3, 2),
  dimnames = list(
    Rows = c("R1", "R2"),
    Columns = c("C1", "C2", "C3"),
    Tables = c("T1", "T2")
  )
)

print(my_array)

# Print specific elements
print(my_array["R1", "C2", "T1"])
print(my_array["R2", "C3", "T2"])
