# Normal probability calculations.

# Normal CDF functions

# pnorm(x,mu,sigma,lower.tail=   )
# finds the area under a normal probabilty distribution.
# The time to run a 5K is normally distributed with a mean
# of 22 minutes and a standard deviation of 3min.
# Let X be the amount of time it takes someone to complete
# the 5K.

# Pr(X>24)
pnorm(24,22,3,lower.tail=FALSE)
pnorm(23,22,3)-pnorm(18,22,3)

# 10% of all people run the 5K in less than how much?

# qnorm(p,mu,sigma,lower.tail=    )
# Finds the X-axis value where the area under the curve
# is p.

qnorm(0.1,22,3)



# shade.norm in the asbio package will shade the portion 
# under the curve

install.packages("asbio")
library(asbio)
# shade.norm(x,sigma,mu,tail="upper")
shade.norm(24,sigma=3,mu=22,tail="upper")

# shade.norm(x,sigma,mu,tail="lower")
shade.norm(24,sigma=3,mu=22,tail="lower")

# shade.norm(from= ,to= ,sigma,mu,tail="middle")
shade.norm(from=18,to=23,sigma=3,mu=22,tail="middle")

# shade.norm(x=c(-0.2,2),sigma,mu,tail="two.custom")
shade.norm(x=c(18,23),sigma=3,mu=22,tail="two.custom")
