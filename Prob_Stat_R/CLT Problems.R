# Central Limit Theorem (CLT):  Let X1,X2,...,Xn be a random sample 
# from a distribution whose mean is mu and variance sigma^2.  Let 
# Xbar be the mean of the random sample (i.e.(X1+X2+...+Xn)/n).

# Then, as n --> infty the distribution of Xbar approaches a normal
# distribution with mean equal to mu and variance sigma^2/n.

# (i) If the distribution of the population is normal, then the 
# distribution of xbar will be normal. (regardless of sample size)
# (ii) If the population is non-normal, the distribution of Xbar will
# be normal if n>=30.


# A certain group of welfare recipients receives SNAP benefits 
# of $110 per week with a standard deviation of $20. If a 
# random sample of 25 people is taken, what is the probability 
# their mean benefit will be greater than $120 per week?

# Assume the population is normally distributed.  

# The distribtion of Xbar will by normal (CLT) with mean = 110,
# variance equal to sigma^2/n = 20^2/25

pnorm(120,110,sqrt(20^2/25),lower.tail=FALSE)


# An unknown distribution has a mean of 90 and a standard 
# deviation of 15.  Suppose a random sample of size 60 is taken
# from this distribution, what is the probability the sum of
# all 60 values exceeds 5500?

# Pr(X > 5500) = Pr(Xbar > 5500/60) = Pr(Xbar>91.67)
# Mean of the distribution of Xbar = 90
# Variance of the distribution of Xbar = 15^2/60
# Std dev of Xbar = sqrt(15^2/60) = 1.93
# By the CLT the distribution of Xbar will be normal.

pnorm(91.67,90,1.93,lower.tail=FALSE)


# The time between customer arrivals at Wall Mart follows an
# exponential distribution with an average of 18 seconds between
# customers.  Suppose that in the next hour 175 people arrive.
# What is the probability the average time between these 175 
# customers is less than 15 seconds?

# By the CLT the distribution of Xbar will be normal (n = 175).
# The standard devation of the the population distribution will
# 18 (exponential distribution mean = std dev)
# The distribution of Xbar will be normal with mean = 18 and 
# variance 18^2/175, std dev of Xbar is sqrt(18^2/175) = 18/sqrt(175).

pnorm(15,18,18/sqrt(175))


# Suppose that a TV manufacturer claims that their TVs last 
# (on average) 7 years with a standard deviation of 1 year.
# Suppose you take a random sample of 15 of these TVs and run
# them until failure.  The average time to failure for your
# 15 Tvs is 6.48 years.  What do you think about the manufacturer's
# claim of a TV lasting on average 7 years? (Note: Assume TV
# lifetimes are normally distributed)

# By the CLT the distribution of Xbar will be normal because the 
# we assume the population is normal.  The mean of Xbar will be 7
# and the std dev. of Xbar will be 1/sqrt(15)
pnorm(6.48,7,1/sqrt(15))
