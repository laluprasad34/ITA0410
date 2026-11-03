# Experiment 14: Explore and reshape ChickWeight
# install.packages("reshape2") # Run once if needed
library(reshape2)
data(ChickWeight)

print(head(ChickWeight))
sorted <- ChickWeight[order(ChickWeight$weight), ]
print(head(sorted))

m <- melt(ChickWeight,
          id.vars=c("Chick", "Time", "Diet"),
          measure.vars="weight")
print(head(m))

cast_result <- dcast(m, Diet ~ variable,
                     value.var="value", fun.aggregate=mean)
print(cast_result)
