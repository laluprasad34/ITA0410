# Experiment 5: Factor variables
data(women)
height_factor <- factor(women$height)
print(height_factor)
print(levels(height_factor))

set.seed(123)
letters_sample <- sample(LETTERS, 10)
letter_factor <- factor(letters_sample)
print(letter_factor)
print(levels(letter_factor))
