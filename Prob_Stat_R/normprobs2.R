# Normal Probability Plot

x <- c(2,3,5,5,8,10)
qqnorm(x)
qqline(x)
hist(x)

x <- rnorm(30)
qqnorm(x)
qqline(x)

y <- rbinom(30,10,0.05)
qqnorm(y)
qqline(y)

xx <- rexp(30,0.1)
qqnorm(xx)
qqline(xx)

pnorm(12,10,2)-pnorm(8,10,2)
pnorm(30,25,5)-pnorm(20,25,5)

pnorm(14,10,2)-pnorm(6,10,2)
pnorm(35,25,5)-pnorm(15,25,5)

pnorm(3)-pnorm(-3)

# Area to the right of Z = -0.85
pnorm(-0.85,lower.tail=FALSE)


# Area between -0.4 and 0.75
pnorm(0.75)-pnorm(-0.4)

# Outside -0.96 and 1.62
pnorm(-0.96)
pnorm(1.62,lower.tail=FALSE)
pnorm(-0.96)+pnorm(1.62,lower.tail=FALSE)

# Find the value of c

# + Pr(Z >= c) = 0.42
qnorm(0.42,lower.tail=FALSE)


# + Pr(Z < c) = 0.32
qnorm(0.32)
# check
pnorm(-0.4676988)

# + Pr(|Z| >= c) = 0.345
qnorm(0.345/2,lower.tail=FALSE)
qnorm(0.345/2)

# + Pr(-c < Z < c) = 0.476
1-0.476
qnorm(0.524/2,lower.tail=FALSE)
# check
pnorm(0.6371917)-pnorm(-0.6371917)
