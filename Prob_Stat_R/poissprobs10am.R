# The average number of cars approaching an intersection
# is 6 per minute.  

# 1. What is the probability there will be 3 cars approaching
#  the intersection in the next minute.

# lambda = 6 cars per minute
dpois(3,6)

# 2. What is the probability there will be no cars approaching
# in the next 15 seconds?

# Average number in 15 seconds 6/4 = 1.5 cars
dpois(0,1.5)


# 3. What is the probability there will be at least 9
#  cars approaching in the next 2 minutes?

# At least 9, that means 9 or more.
# The average rate for 2 minutes would be 6*2=12

ppois(8,12,lower.tail=FALSE)



# 4. A car just arrives.  We are at least 95% sure we
# will have to wait more than ___ seconds for the next car
# to arrive. Fill in the blank.

# dpois(0,6*t) guess/check t until probability exceds 0.95
dpois(0,6*0.5)
dpois(0,6*0.1)
dpois(0,6*0.05)
dpois(0,6*0.01)
dpois(0,6*0.009)
0.009*60
log(.95)/(-6)
dpois(0,6*0.008548882)
