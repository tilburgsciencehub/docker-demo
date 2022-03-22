# import data
library(readr)
data <- read.csv("data/data.csv")
Z <- as.matrix(data)
# create a histogram and save it to output folder
png("output/histogram.png")
histogram <- hist(Z)
dev.off()
