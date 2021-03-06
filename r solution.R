library(FNN)

train <- read.csv("train.csv", header=TRUE)
test <- read.csv("test.csv", header=TRUE)

labels <- train[,1]
train <- train[,-1]

results <- (0:9)[knn(train, test, labels, k = 10, algorithm="cover_tree")]

write(results, file="knn_benchmark1.csv", ncolumns=1) 