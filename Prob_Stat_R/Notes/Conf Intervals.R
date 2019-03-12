# Problem 1:  The equatorial radius of the planet Jupiter is measured 
# 40 times independently by a process that is practically free of bias.  
# These measurements average (xbar) = 71492 kilometers with a standard 
# deviation 28 kilometers.  Find a 95% confidence interval for 
# the equatorial radius of Jupiter.

# 95% Confindence interval
# LB = xbar - 1.96*stddev/sqrt(n)
LB = 71492-1.96*28/sqrt(40)
LB
UB = 71492+1.96*28/sqrt(40)
UB


# 85% confidence interval

# za2 = qnorm(0.075,lower.tail=FALSE) = qnorm(0.925)
za2 = qnorm(0.925)
LB = 71492-za2*28/sqrt(40)
UB = 71492+za2*28/sqrt(40)
LB
UB

# Problem 2:  Suppose the researchers decided that it would be okay 
# to be accurate only within (+/-) 10 km.  What sample size would 
# achieve this margin of error?

(1.96*28/10)^2

# Problem 3:  A random sample of 16 Americans was taken in
# to determine the average number of pounds of beef eaten
# in a year.  The data is below:

x = c(118,115,125,110,112,130,117,112,115,120,113,118,119,122,123,126)
# Check to see if population is normally distributed
qqnorm(x)
qqline(x)

# Determine a 95% interval for the average number
# of pounds eaten annually by all americans.
m = mean(x)
1/0.03^2
s = sd(x)
n = length(x)
ta2 = qt(0.975,16-1)
LB = m-ta2*s/sqrt(n)
UB = m+ta2*s/sqrt(n)
LB
UB

# Problem 4:  A survey of college students was recently taken regarding 
# the approval of President Trump with regards to the economy.  
# 300 students were surveyed and 165 stated they approved of his 
# economic polices.  Construct a 95% confidence interval for the 
# proportion of students who approve of his economic policies.

ntilda = 300+4
ptilda = (165+2)/ntilda
qtilda = 1-ptilda

SE = sqrt(ptilda*qtilda/ntilda)
LB = ptilda - 1.96*SE
UB = ptilda + 1.96*SE
LB
UB


# Problem 5: A survey of SDSMT students is to be conducted with 
# regards to whether they think Statistics should be a required
# course for all majors.  How many students should be sample if
# they 95% confidence should have an error of no more than +/- 3%?

# So, most conservation is phat=0.5

# Approximate answer
1/0.03^2
# so 1112 (always round up)

# Actual answer
(1.96*0.5/0.03)^2
# So, 1068