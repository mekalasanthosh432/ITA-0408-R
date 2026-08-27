# Women's dataset
data(women)

height_factor <- factor(women$height)

print(height_factor)
print(levels(height_factor))
set.seed(10)

letters_factor <- factor(sample(LETTERS, 10))

print(letters_factor)
print(levels(letters_factor))
