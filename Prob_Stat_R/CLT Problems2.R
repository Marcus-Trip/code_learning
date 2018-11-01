# 1. A companies monthly profits are normally distributed with a mean of 
# of 50K and a standard deviation of 5K.  In a year, what is the probability
# their total profits exceed 610K?

# This means the average monthly profits must exceed 610/12 = 50.8333
# By the CLT the average (xbar) is normally distributed with a mean
# of 50K std deviation of xbar is 5/sqrt(12)K.

pnorm(610/12,50,5/sqrt(12),lower.tail=FALSE)

# 2. A student claims that the average age of full time students is 23,
# with a standard deviation of 1.  You believe the average age to be
# smaller than 24.  To test this, you take a random sample of 15 
# students.  The results of your survey/sample are as follows.

# 21, 23, 21, 20, 23, 21, 22, 23, 21, 24, 21, 20, 22, 23, 22

# Assume the population standard deviation of 1 is accurate.

# Since the sample size is small, we need to see if it's plausible
# the population from which the sample came is normaly distributed.

x = c(21, 23, 21, 20, 23, 21, 22, 23, 21, 24, 21, 20, 22, 23, 22)
qqnorm(x)
qqline(x)

# The normal probability plot looks "not bad",
# so the normality assumption is plausible.

# What are your thoughts as to whether 23 is an accurate number?

mean(x)
# What is the chance of getting a sample mean of 21.8 or smaller
# IF the population mean is 23?
# By the CLT the mean of Xbar is 23 and the standard deviation is 
# 1/sqrt(15)

pnorm(mean(x),23,1/sqrt(15))

# Since this probability is so small, we conclude the population
# mean is probably not 23.



# 3. In Rapid City, the police department claims that of all DUI stops,
# the average breathalyzer reading is 0.07 with a standard deviation
# of 0.02.  An investigative reporter from the Rapid City Journal 
# rides along one Saturday evening to investigate this.  During the 
# course of the evening, the officer pulls over 7 individuals for 
# possible DUI.  The results are listed below.

# 0.07, 0.06, 0.08, 0.10, 0.07, 0.05, 0.11

x = c(0.07, 0.06, 0.08, 0.10, 0.07, 0.05, 0.11)
qqnorm(x)
qqline(x)
# This plot looks "not bad", there is no reason
# to believe the sample didn't come from a normal population.

# assume the population is normal

# Does the reporter have any reason to believe the mean is actually
# larger than 0.07?  Assume 0.02 is an appropriate value for the 
# population standard deviation.

mean(x)

# By the CLT the mean of xbar = 0.07 and the std deviation of xbar
# will be 0.02/sqrt(7)

pnorm(mean(x),0.07,0.02/sqrt(7),lower.tail=FALSE)

# Since the probability is fairly large (17%) we conclude the
# sample mean is probably 0.07 or at least the reporter
# has no real evidence to refute this.



# 4. A machine at Coca-Cola corporation controls the amount of liquid
# that goes into a 12 oz can of pop.  The machine filling follows
# a normal distribution with an average of 12.1 oz with a standard 
# devation of 0.2oz.

# Determine the probability that a sample of size 10 will have a
# sample mean that is smaller than 12.15.

# By the CLT, the distribution of xbar will be normal because the 
# population is normally distributed.  The mean of xbar = 12.1 and
# standard deviation of 0.2/sqrt(10).

pnorm(12.15,12.1,0.2/sqrt(10))

# Suppose the machine can be adjusted so that the standard deviation 
# is reduced.  What must the standard deviation be reduced to so that 
# you are 90% a sample average will not exceed 12.15 for a sample of size
# 10.  

# z = (12.15-12.1)/(x/sqrt(10))
qnorm(0.9)


# 1.28 = 0.05*sqrt(10)/x
0.05*sqrt(10)/1.28


