# import data
data <- read.csv("data/data.csv")
Z <- as.matrix(data)
# create a histogram and save it to output folder
dir.create('gen')
png("gen/histogram.png")
histogram <- hist(Z)
dev.off()
