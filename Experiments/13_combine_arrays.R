# Experiment 13: Combine arrays row-wise
a1 <- array(1:6, dim=c(2, 3))
a2 <- array(7:12, dim=c(2, 3))
result <- rbind(a1, a2)
print(a1)
print(a2)
print(result)
