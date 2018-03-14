rm(list=ls())

# Author: Grant Byrum, Kathrine Allen, Connor Patsel, Issac Roberts
# Date: March 14, 2018
# Purpose: Analyze movie data set to provide a model to predict movie success

library(ggplot2)

movies <- read.csv(file="/Users/grantbyrum/Documents/CPSC 4300/the-movies-dataset/movies_metadata.csv", header=TRUE)
myvars = c("revenue", "budget", "vote_average", "popularity")
movies.clean = movies[myvars]
rm(movies)

summary(movies.clean)
plot(movies.clean)

movies.lm <- lm(revenue ~ budget + vote_average + popularity, data=movies.clean)

test.data = data.frame(budget=1000000, vote_average=5.0, popularity=50.0)

predict(movies.lm, test.data)

