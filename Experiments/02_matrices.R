# Experiment 2: Labeled matrices
m1 <- matrix(1:20, nrow=5, ncol=4, byrow=TRUE,
             dimnames=list(paste0("Row", 1:5), paste0("Col", 1:4)))
m2 <- matrix(1:9, nrow=3, ncol=3, byrow=FALSE)
m3 <- matrix(1:4, nrow=2, ncol=2, byrow=TRUE)
print(m1); print(m2); print(m3)
