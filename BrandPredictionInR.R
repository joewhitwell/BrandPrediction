install.packages("readr")
library("readr")
cars <- read_csv("R/cars.csv")
View(cars)
attributes(cars)
summary(cars)
str(cars)
hist(cars$`speed of car`)
trainSize<-round(nrow(cars)*0.7)
testSize<-nrow(cars)-trainSize
training_indices<-sample(seq_len(nrow(cars)),size=trainSize)
SpeedModel<-lm(Distance~Speed,trainSet)
Predictions <- predict(SpeedModel,testSet)
> Predictions