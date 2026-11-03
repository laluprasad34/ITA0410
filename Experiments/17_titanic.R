# Experiment 17: Explore built-in Titanic dataset
data(Titanic)
t <- as.data.frame(Titanic)

# Survival vs passenger class
barplot(xtabs(Freq ~ Class + Survived, data=t),
        beside=TRUE, main="Survival vs Class",
        xlab="Class", ylab="Number of passengers",
        legend=TRUE)

# Survival by gender
barplot(xtabs(Freq ~ Sex + Survived, data=t),
        beside=TRUE, main="Survival by Gender",
        xlab="Gender", ylab="Number of passengers",
        legend=TRUE)

# Note: built-in Titanic is an aggregated table and has no Age column.
# An age histogram requires an individual-passenger Titanic dataset.
print(t)
