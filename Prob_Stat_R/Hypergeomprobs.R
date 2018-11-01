# 5 cards are drawn from a deck of 52 playing 
# cards.  Let X = # of diamonds in the 5 cards.

# 1. What is the probability all 5 are diamonds?
# m = 13, n = 39, k = 5
# dhyper(X,m,n,k)
dhyper(5,13,39,5)

# 2. What is the probability at most 3 are diamonds?
# Pr(X=0)+Pr(X=1)+Pr(X=2)+Pr(X=3)
# phyper(X,m,n,lower.tail=TRUE/FALSE)
phyper(3,13,39,5,lower.tail=TRUE)
phyper(3,13,39,5) # default is true

# 3. How many diamonds would you expect to get?
# k m/N
5*13/52

# 4. What is the variance of the number of diamonds?
# k (m/N)(1-m/N)(N-k)/(N-1)
5*13/52*(1-13/52)*(52-5)/(52-1)

# 5. You are at least 30% sure the minimum number 
#    of diamonds would be?
# phyper(x,13,39,5,lower.tail=FALSE), guess/check X
phyper(3,13,39,5,lower.tail=FALSE)
phyper(2,13,39,5,lower.tail=FALSE)
phyper(1,13,39,5,lower.tail=FALSE)
# Pr(X>1) = Pr(X>=2)
# So, the minimum value would be 2

# 6. Suppose cards are selected until a diamond is
#    obtained.  How many should you pick to be
#    at least 90% sure you will get a diamond?
# phyper(0,13,39,k,lower.tail=FALSE), guess/check k
phyper(0,13,39,5,lower.tail=FALSE)
phyper(0,13,39,6,lower.tail=FALSE)
phyper(0,13,39,7,lower.tail=FALSE)
phyper(0,13,39,8,lower.tail=FALSE)
# So deal 8 cards to be more than 90% sure of getting at
# least one diamond.