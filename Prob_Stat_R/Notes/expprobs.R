# Suppose that on average 6 customers arrive per hour
# at Devon's coffee shop.

# Assume a Poisson Process

# Suppose the coffee shop opens at 8am, what is 
# the probability the first customer arrives before
# 8:30am?

# lambda = 6 customers per hour, t = 1/2 hour
# F(1/2) = 1 - e^(-6*1/2)

1-exp(-6/2)
ppois(0,3,lower.tail=FALSE)
# Using Poisson
# average rate per hour is 6, so the average in 30 minutes 
# should be 3.
ppois(0,3,lower.tail=FALSE) # more than zero


# The average survival time of a catapillar afer
# being sprayed by a pesticide is 4.5 hours.

# Assume after spraying catapillars die according to
# a Poisson process.

# Let T be the amount of time a catapillar lives
# E[T] = 4.5 = 1/lambda --> lambda = 1/4.5

# What is the probability he lives more than
# 5 hours after being sprayed?
exp(-1/4.5*5)

# What is the probability he lives between 4
# and 6 hours after being sprayed?

# F(6) - F(4)

(1-exp(-1/4.5*6))-(1-exp(-1/4.5*4))


# What is the probability he lives more 
# than 1 standard longer than the mean?

# Sd of T is 1/lambda = 4.5
# Pr(> mean+sd) = Pr(>4.5+4.5) = Pr(>9)

exp(-1/4.5*9)
