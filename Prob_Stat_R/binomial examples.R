# Example: 30% of the customers at Starbucks order coffee,  
# the remaining 70% order something else
# (e.g. # Cappuccino, Latte). Consider the next 10 customers.

# 1. Does this satisfy the binomial assumptions?

# (1) An experiement with n identical trials. Yes., n=10 trials
#     each customer is trail.

# (2) The outcome of each trial has only 2 possbilities. Yes, 
#     order coffee or order something else.

# (3) The probability of a success does not change from trial
#     to trial. (p = 0.3) Yes, probably.

# (4) The experiment trials are independent. Yes, probably.

# 2. What is the probability that fewer than 3 people order coffee?

# X = # people who order coffee
# Pr(X=0) + Pr(X-=1) + Pr(X=2)
dbinom(0,10,0.3)+dbinom(1,10,.3)+dbinom(2,10,0.3)
pbinom(2,10,0.3,lower.tail=TRUE)
pbinom(2,10,0.3)

# 3. What is the probability that 7 or more order coffee?
pbinom(6,10,0.3,lower.tail=FALSE) # Pr(X>6) = Pr(X>=7)

# 4. What’s the probability that exactly 5 people order coffee?
dbinom(5,10,0.3)

# 5. How many of the 10 customers would you expect to order coffee?
# n*p
10*0.3

# 6. We are at least 85% sure more than how many customers will 
#    order coffee?
pbinom(4,10,0.3,lower.tail=FALSE)
pbinom(3,10,0.3,lower.tail=FALSE)
pbinom(2,10,0.3,lower.tail=FALSE)
pbinom(1,10,0.3,lower.tail=FALSE)
# So, more than 1 person

qbinom(0.85,10,0.3,lower.tail=FALSE)
