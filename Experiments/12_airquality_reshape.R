# Experiment 12: Reshape airquality dataset
# Install reshape2 once if needed:
# install.packages("reshape2")
library(reshape2)
data(airquality)

m <- melt(airquality, id.vars=c("Month", "Day"))
print(head(m))

cast_result <- dcast(m, Month ~ variable,
                     value.var="value",
                     fun.aggregate=mean, na.rm=TRUE)
print(cast_result)

monthly <- aggregate(
  cbind(Ozone, Solar.R, Wind, Temp) ~ Month,
  data=airquality, FUN=mean, na.rm=TRUE
)
print(monthly)
