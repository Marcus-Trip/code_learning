

#Pg 212: 1,2,8,10

#2) Let X~Bin(9,0.4).
#P(X>6)
pbinom(6,9,0.4,lower.tail = FALSE)
#P(X>=2)

1-pbinom(1,9,0.4) # Pr(X>1) = Pr(X>=2)
#P(2<=X<5)=> P(x<5)-P(x<=2)=>P(x<=4)-P(x<=2)
pbinom(4,9,0.4)-pbinom(2,9,0.4)
#P(2<X<=5)=> P(x<=5)-P(x<2)=>P(x<=5)-P(x<=1)
pbinom(5,9,0.4)-pbinom(1,9,0.4)
#P(X=0)
pbinom(0,9,0.4)
#P(X=7)
dbinom(7,9,0.4)
# mu(x) = 3.6
#Sigma^2(x) =2.16

#8) A genreral contracting firm experiences cost overruns on 20%
# of its contracts. In acompany audit, 20 contracts are sampled
# at random.

# P(X=4)
dbinom(4,20,0.2)
#P(X<3)
pbinom(2,20,0.2)
#P(X=0)
dbinom(0,20,.2)
# mu(x) [Mean] = 4
#Sigma^2(x) (Standard Deviation)= 1.78

#10) A quality engineer takes a random sample of 100 steel
# rods from a day's production and finds that 92 of them
# meet specifications.

# Estimate the proportion of that day's production that
# meets specifications and find the uncertainty in the estimate.
 # a) 0.3119
# Estimate the number of rods that must be sampled to reduce 
# the uncertainty to 1%. 
# b) 0.17679


# Pg 227: 1,4,6,16
#4)Geologists estimate the time since the most recent cooling of a mineral by counting the number 
# of uranium fission tracks on the surface of the mineral. A certain mineral specimen is of such 
# an afe that there should be an average of 6 trackes per cm^2 of surface area. Assume the number
# of tracks in an area follows a poission distribution. Let X represent the number of tracks counted 
# in 1 cm^2 of surface area. Find...
# lambda = 6
# A) P(X=7)
dpois(7,6)
# b) P(X>=3)
ppois(2,6,lower.tail = FALSE) # P(x>=3)= P(X>2)
# c) P(2<X<7)
ppois(6,6)-ppois(1,6)
# d)Mu(x) 
# mu = lambda = 6
# e) sigma(x)^2 = 6

# 6) one out of every 5000 individuals in a population carries a certain defective gene.
# A random sample of of 1000 indiviuals is studied.
# lambda = 1/5000
# a)  What is the probability that exactly one one of the sample 
#     individuals carries the gene?
dpois(1,1/5000*1000)
# b)  That none are carries the gene?
dpois(0,1/5000*1000)
# C)  that more than 2 carry the gene?
ppois(2,1/5000*1000,lower.tail = FALSE)
# d) Mean = lambda = 1/5000*1000
1/5000*1000
# e) SD = lambda = .2 = mean

# 16) Grandma is tyring out a new recipe for raisin bread. Each batch of bread dough makes
# 3 loaves and each loaf contains 20 slices of bread.
# a) 100 raisins into a batch of dough, what is the proabbility that a eandomly chosen 
#   slice of bread conatains no raisins?
#  average = 100/(3*20) = 1.666 raisins per slice.
dpois(0,100/60)
# b) 200 raisins into a batch of dough, what is the proabbility that a eandomly chosen 
#   slice of bread conatains 5 raisins?
#  average = 200/(3*20) = 3.33 raisins per slice.
dpois(5,200/60)
# c) how many raisins must be put in a batch so the probability that a randomly selected 
#   slice will have no raisins is 0.01?
#lambda = -ln(P(X=0)) # P(x=0)=0.01
-log(0.01)
#N=Lambda*3*20
(-log(0.01)*3*20)


# Pg 240: 1, 2, 12
#2) There are 30 restaunts in a certain town. Assume that four of them have heath code violations.
#   A health inspector chooses 10 restaurant at random to visit. 
# a) what is the probability that two of the restaurants with health code violations will be visited.
# X~Hyper(30,4,10)    ... P(X=2)
# m = 4, n = 26, k = 10
# dhyper(X,m,n,k) = dhyper(X_value,# of sucess, # failures,Sample size)
dhyper(2,4,26,10)

# B)  What is the probability that none of the restaurants that are visted
# will have health code violations?
dhyper(0,4,26,10)


# 12) A lot of parts contains 500 items, 100 of which are defective. Suppose
# that 20 are selected at random. Let X be the number of selected items that
# are defective. 
# m = 100 n = 400 k = 20
# a)  express the quanity P(X=5) using factorials.
# P(X=5)= (m|x)(n|(k-x))/(N|k); (100|5)(400|20-5)/(500|20)
# (A|W)=A!/(W!(A-W)!)
# a) 100!*400!*20!*480!/(5!*95!*15!*385!*500!)
# b)  Use the binomial approximations to compute an approximation to P(X=5)
dbinom(5,20,100/500)


# Pg 252: 1,4,8,9,12,15,22

# 4) If X~N(2,9), compute
# a) P(X>=2)
pnorm(1,2,9)
# b) P(1<=X<7) = P(X<=6)-P(x<=1)
pnorm(6,2,9)-pnorm(1,2,9)
# C) P(-2.5<=X<-1)
pnorm(-2,2,9)-pnorm(-2.5,2,9)
# d) P(-3<=X-2<3)

# 8) weights of female cats of a certain breed are normally distibuted with mean 4.1kg
# and a SD of 0.6kg
# A)  What proportion of female cats have weights between 3.7 and 4.4kg?
# P(3.7<X<4.4)
pnorm(4.4,4.1,0.6)-pnorm(3.7,4.1,0.6)

# b) P(X> 4.1+0.6*0.5)
pnorm(4.1+0.6*0.5,4.1,0.6)

# c)  Z=(x-mu)/sigma
pnorm(0.8416215)
# Z=0.84163 = (x-4.1)/0.6
0.8416215*0.6+4.1
# answer for c is 4.6kg

# d) a female cate is chosen at random. what is the probability that she weighs more than 4.5kg?
pnorm(4.5,4.1,0.6,lower.tail = FALSE)

# e) Six female cats are chosen at random, what is the probability that exactly one of them weighs
# more than 4.5kg?
# -not sure-

# 12)Specifications for an aircraft bolt require that the ultimate tensile strenght be at least 18kN
# It is known that 10% of the bolts have strengths less than 18.3 and that 5% of the bolts have 
# strengths greater than 19.76kN. It is also that the strengths of these bolts are normally 
#  distributed.

# a) Find the mean and standard deviation of the strengths.
# a) Mean = 18.9 and Sd = 0.5
# b) what proportion of the bolts meet the strength specification?
# b) 0.97


# 22) Two resistors with resistances R1 and R2, are conected in series. R1 is normally distributed with
# mean 100ohm and sd of 5 ohm. R2 is normally distibuted with mean 120ohm and sd 10ohm.

# a) what is the probability that R2 > R1?

# b) what is the probability that R2 exceeds R1 by more than 30ohm?


# pg 270: 2,4,9,10

# 2) 
# A) lambda = 1/0.5
1/0.5
# B) 
0.5
# c) sd =1/lambda^2
1/2^2
