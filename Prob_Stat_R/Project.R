x<-read.csv(file= "C:/Users/7314434/Documents/Personal Codes/code_learning/Prob_Stat_R/winee.csv" ,header = TRUE)
WD=c(10,5,9,1,9,7,1,9,4,10,9,7,7,6,10,7)
hist(WD,breaks = 8)
scatter.smooth(WD)
plot(WD)
length(WD)
mean(WD)
dt(1,length(WD)-1)


