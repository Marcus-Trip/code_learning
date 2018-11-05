# This is the R code for chapter 4 test


# Binomial
# X~binom(n,p) => _binom(x,n,p) 
# mean = np
# var = np(1-p)

# Hypergeometric
# X~hyper(N items,R sucesses,n items are sampled)  =>  
# m = sucesses , n= failers (Items - sucess), k = items sampled
# _hyper(X,m,n,k)
# mean = n*R/N
# var = n(R/N)(1-R/n)((N-n)/(N-1))



# Poisson
# Lambda = np
# X~Pois(x)  => _pois(x,lambda)
# mean = lambda
# var = lambda
# In 2 hours, the probability of an attack would be:
# 1-dpois(0,1.179167*2)
# to change lambda    multiple Lambda*t


# Exponetial
# X~Exp(x)  => _exp(x,lambda)
# mean = 1/lambda
# var = 1/lambda^2

# Normal
# X~N(Mu, var/sd) => 
# pnorm(x,mu,sigma,lower.tail=   )
# mean = mean
# var = var

# Find the value of c
# + Pr(Z >= c) = 0.42
# qnorm(0.42,lower.tail=FALSE)







# Question 1
pbinom(6,10,0.8,lower.tail = FALSE)
pbinom(6,10,0.8)- pbinom(1,10,0.8)


# Question 2
ppois(4,2,lower.tail = FALSE)
ppois(6,10)
-log(.9)/(2/365)
365*0.052


#question 3
1-pnorm(1.3)
pnorm(.75)-pnorm(-1.2)
pnorm(2.4,lower.tail = FALSE)

# Question 4
# Find the value of c
# + Pr(Z >= c) = 0.42
# qnorm(0.42,lower.tail=FALSE)
qnorm(.72)
qnorm(0.34,lower.tail = FALSE)
(1+0.42)/2
qnorm(.71)
pnorm(1.42)-pnorm(0)

# Question 5
pnorm(5819,4750,650,lower.tail=FALSE   )
pnorm(4350,4750,650,lower.tail=TRUE )-pnorm(3800,4750,650)
qnorm(.90,4750,650)
650^2/52
pnorm(255500,4750*52,8125,lower.tail = FALSE)
