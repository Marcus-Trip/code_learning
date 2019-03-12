#summary(CO2)

test<-read.csv("https://www.mcs.sdsmt.edu/kcaudle/M381/data/fertilizer.csv")
attach(test)
tapply(Yield,Treatment,mean)
#mean(candy$Red)
tapply(Yield,Treatment,sum)


summary()
median()
library(Rcmdr)

library(M381)


#hist(prob_four)
#boxplot((prob_four))
