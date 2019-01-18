The goal of this machine learning project is to classify the flowers into among the three species — virginica, setosa, or versicolor based on length and width of petals and sepals.

###Random Forrest

data(iris)
library(ggplot2)
library(caret)
itrain <- createDataPartition(y=iris$Species, p=.7, list=FALSE)

training <- iris[itrain,]
modfit <- train(Species~., data=training, method="rf", prox=TRUE)
modfit
