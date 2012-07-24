\name{case0401}
\alias{case0401}
\docType{data}
\title{Space Shuttle}
\description{
  The number of space shuttle O-ring incidents for 4 space shuttle
  launches when the air temperatures was below 65 degrees F and for 20
  space shuttle launches when the air temperature was above 65 degrees
  F. 
}
\usage{case0401}
\format{
  A data frame with 24 observations on the following 2 variables.
  \describe{
    \item{\code{Incidents}}{the number of O-ring incidents}
    \item{\code{Launch}}{factor variable with two levels---\code{"Cool"} and
      \code{"Warm"}} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2012). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Duxbury.
}
\references{
  Feynman, R.P. (1988).  \emph{What do You Care What Other People
    Think?} W. W. Norton. 
}
\seealso{
 \code{\link{ex2011}}, \code{\link{ex2223}} 
}
\examples{
str(case0401)
attach(case0401)

mCool <- mean(Incidents[Launch=="Cool"]) 
mWarm <- mean(Incidents[Launch=="Warm"])
mDiff <- mCool - mWarm
c(mCool,mWarm,mDiff)

## PERMUTATION TEST BASED ON DIFFERENCE IN AVERAGES, VIA REPEATED RANDOM RE-GROUPING (ADVANCED)
numRep  <- 50 # Number of random re-groupings.
              # NOTE: this should be changed to something like 50,000 for useful results.
rDiff   <- rep(0,numRep) # A place to store the differences in averages from the re-groupings
for (rep in 1:numRep) {  # Repeat the commands following numRep times
  randomGroup <- rep("rWarm",24)  # Initially set this to 24 values "rWarm"
  randomGroup[sample(1:24,4)]  <- "rCool"  # Replace 4 and random with "rCool"
  mW  <- mean(Incidents[randomGroup=="rWarm"])
  mC  <- mean(Incidents[randomGroup=="rCool"])
  rDiff[rep] <- mC-mW  # Store the difference in averages
                                }
hist(rDiff,     # Draw a histogram of the difference in averages from numRep random re-groupings
  main="Approximate Permutation Distribution",
  xlab="Possible Values of Difference in Averages",
  ylab="Frequency of Occurrence")
abline(v=mDiff)  # Make a vertical line at the actually observed difference
pValue <- sum(rDiff >= 1.3)/numRep  # 1-sided p-value = proportion of re-groupings with diff >= observed
pValue  
text(mDiff,75000, 
  paste(" -->",round(pValue,4)),  
  adj=-0.1) 

detach(case0401) 
}
\keyword{datasets}
