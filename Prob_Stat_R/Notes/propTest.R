# A study was performed to see if politcal views of SDSMT students
# differed from those at the University of Connecticut.

poll = read.table("http://www.mcs.sdsmt.edu/kcaudle/TEAMS/data/poll2.txt",header=TRUE)
poll

# Break out the sdsmt students
poll.sdsmt = subset(poll,poll$School=='SDSMT')

# count the yes answers
X.sdsmt = length(which(poll.sdsmt$Conservative.Y.N.=='Yes'))

# count the sdsmt students who were polled
n.sdsmt = length(poll.sdsmt$Student)

# Test to see if percentage exceeds 40%
# H0: p = 0.4 vs. Ha: p > 0.4

# TS = (observed-null)/SE
phat.sdsmt = X.sdsmt/n.sdsmt
TS = (phat.sdsmt-0.4)/sqrt(0.4*0.6/n.sdsmt)
TS
pval.sdsmt = pnorm(TS,lower.tail=FALSE)
pval.sdsmt

# Breakout the uconn students
poll.uconn = subset(poll,poll$School=='UCONN')

# count the yes answers
X.uconn = length(which(poll.uconn$Conservative.Y.N.=='Yes'))

# count the sdsmt students who were polled
n.uconn = length(poll.sdsmt$Student)

# Test to see if percentage exceeds 40%
# H0: p = 0.4 vs. Ha: p > 0.4

# TS = (observed-null)/SE
phat.uconn = X.uconn/n.uconn
TS = (phat.uconn-0.4)/sqrt(0.4*0.6/n.uconn)
TS
pval.uconn = pnorm(TS,lower.tail=FALSE)
pval.uconn


