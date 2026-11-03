# Experiment 4: Arrays with dimension names
arr <- array(1:12, dim=c(2, 3, 2))
dimnames(arr) <- list(
  Rows=c("R1", "R2"),
  Columns=c("C1", "C2", "C3"),
  Tables=c("T1", "T2")
)
print(arr)
print(arr[1, 2, 1])
print(arr[2, 3, 2])
