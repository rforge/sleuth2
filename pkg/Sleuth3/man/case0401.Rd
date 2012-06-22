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
str(case0401)                                        # Show the structure of the data frame.
attach(case0401)                                     # Attach the data frame to the R search path.

mCool <- mean(Incidents[Launch=="Cool"])             # Compute average number of incidents for Cool Launches.
mWarm <- mean(Incidents[Launch=="Warm"])             # Compute average number of incidents for Warm Launches.
mDiff <- mCool - mWarm                               # Compute the difference in averages.
c(mCool,mWarm,mDiff)                                 # Show the results.

## PERMUTATION TEST BASED ON DIFFERENCE IN AVERAGES, VIA REPEATED RANDOM RE-GROUPING (ADVANCED)
numRep 	<- 500000                                    # Specify the number of random regroupings (of the 24 scores into groups of size 4 and 20).
rDiff   <- rep(0,numRep)                             # Create a variable rDiff to store the differences in averages for the random regroupings.
for (rep in 1:numRep) {                              # Do the following commands in parentheses numRep (50,000) times:
  randomGroup <- rep("rWarm",24)                     # ...make a character variable of size 24, initially all with values "rWarm", 
  randomGroup[sample(1:24,4)]  <- "rCool"            # ...change 4 of these, at random, to "rCool",
  mW  <- mean(Incidents[randomGroup=="rWarm"])       # ...calculate the average number of Incidents from the 20 randomly labeled as "rWarm". 
  mC  <- mean(Incidents[randomGroup=="rCool"])       # ...calculate the average number of Incidents from the 4 randomly labeled as "rCool", and 
  rDiff[rep] <- mC-mW                                # ...store the difference in averages from this random re-grouping in the "rep" cell of rDiff.
				}
hist(rDiff,                                          # Draw a histogram of the differences from random re-groupings (which approximates the permutation distribution), with
  main="Approximate Permutation Distribution",       # ...title,
  xlab="Possible Values of Difference in Averages",  # ...x-axis label, and
  ylab="Frequency of Occurrence")                    # ...y-axis label.
abline(v=mDiff)                                      # Draw a vertical line at the actually observed difference in averages.
pValue <- sum(rDiff >= 1.3)/numRep                   # Calculate a one-sided p-value from the permutation test.
pValue                                               # Show the result.
text(mDiff,75000,                                    # Include text on the histogram at x=mDiff and y=75000,
  paste(" -->",round(pValue,4)),                     # ... including an arrow and the p-value rouned to 4 digits, and
  adj=-0.1)                                          # ... adjusted to start a little to the right of mDiff

detach(case0401)                                     # Detach the data frame from the R search path.

}
\keyword{datasets}
