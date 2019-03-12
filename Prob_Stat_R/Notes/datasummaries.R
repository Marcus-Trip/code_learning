# Stem and Leaf Plot
scores = c(82,83,45,90,71,75.5,74,74,91,60) # Test scores
stem(scores)

# Dot plot
x = c(3,6,6,7,7,7,8,9,10,10) # Quiz scores
stripchart(x,method="stack",pch=16) 

# Histogram, bins = 1 + log2(n): Sturges Rule, default
rain <- read.csv("https://www.mcs.sdsmt.edu/kcaudle/M381/datasets/Ch1/ex1_3_1.csv",header=TRUE)
hist(rain$Rainfall,xlab="Inches",main="Annual Inches of Rain in Los Angeles")
attach(rain)
mean(Rainfall)
hist(Rainfall)

# Numerical Summaries

candy <- read.csv("https://www.mcs.sdsmt.edu/kcaudle/M381/datasets/candy.csv",header=TRUE)
attach(candy)
mean(TotalNumCandies)
sum(TotalNumCandies)/59
tapply(TotalNumCandies,Size,mean)
sort(TotalNumCandies)
median(TotalNumCandies)
tapply(TotalNumCandies,Size,median)
library(M381) # Load the M381 package
Mode(TotalNumCandies) # Note the capital "M"
summary(TotalNumCandies)
boxplot(TotalNumCandies)
boxplot(TotalNumCandies,horizontal=TRUE)
boxplot(TotalNumCandies~Size)
