# 1. Suppose one would like to know the average ACT score for all of 
# Central HS in Rapid City.  A random sample of 40 students is taken
# and their ACT scores are collected.  The sample average is 
# 19.  Assume that the testing folks tell you the population 
# standard deviation is 4.

# Perform a significance test to see if the average ACT score of
# all Central HS students exceeds 18.

# H0: mu=18
# Ha: mu>18

TS = (25-27.4)/(6.13/sqrt(49))
TS

pval = pnorm(TS,lower.tail=FALSE)
pval

# If we use 0.05 for our level of significance, than
# we do not reject H0 becausel p-value > 0.05


# 2. A random sample of 16 Americans was taken in
# to determine the average number of pounds of beef eaten
# in a year.  The data is below:

x = c(118,115,125,110,112,130,117,112,115,120,113,118,119,122,123,126)

# Peform a significance test to see if the mean is more than 119.

# H0: mu = 119
# Ha: mu > 119
# Let alpha = 0.05

# TS = (observed-null)/SE
TS = (mean(x)-119)/(sd(x)/sqrt(16))
pval = pt(TS,16-1,lower.tail=FALSE)
pval

# Since p-value > alpha = 0.05 we do not rejct H0.

# Peform a significance test to see if the mean is less than 115.

# H0: mu = 115
# Ha: mu < 115

TS = (mean(x)-115)/(sd(x)/sqrt(16))
pval = pt(TS,16-1)
pval

# Do not reject H0 because pval > 0.05

# Peform a significance test to see if the mean is not equal to 119.

# H0: mu = 119
# Ha; mu not equal to 119

TS = (mean(x)-119)/(sd(x)/sqrt(16))
pval = pt(TS,16-1,)*2
pval
# Do not reject reject H0, pval > 0.05