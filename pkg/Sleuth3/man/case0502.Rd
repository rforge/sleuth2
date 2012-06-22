\name{case0502}
\alias{case0502}
\docType{data}
\title{The Spock Conspiracy Trial}
\description{
  In 1968, Dr. Benjamin Spock was tried in Boston on charges of
  conspiring to violate the Selective Service Act by encouraging young
  men to resist being drafted into military service for Vietnam.  The
  defence in the case challenged the method of jury selection claiming
  that women were underrepresented.  Boston juries are selected in three
  stages.  First 300 names are selected at random from the City
  Directory, then a venire of 30 or more jurors is selected from the
  initial list of 300 and finally, an actual jury is selected from the
  venire in a nonrandom process allowing each side to exclude certain
  jurors.  There was one woman on the venire and no women on the final
  list.  The defence argued that the judge in the trial had a history of
  venires in which women were systematically underrepresented and
  compared the judge's recent venires with the venires of six other
  Boston area district judges. 
}
\usage{case0502}
\format{
  A data frame with 46 observations on the following 2 variables.
  \describe{
    \item{\code{Percent}}{is the percent of women on the venire's of the Spock
      trial judge and 6 other Boston area judges} 
    \item{\code{Judge}}{a factor with levels \code{"Spock's"}, \code{"A"},
      \code{"B"}, \code{"C"}, \code{"D"}, \code{"E"} and \code{"F"}} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2012). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Duxbury.
}
\references{
  Zeisel, H. and Kalven, H. Jr. (1972).  Parking Tickets and Missing
  Women: Statistics and the Law \emph{in} Tanur, J.M. et al. (eds.)
  \emph{Statistics: A Guide to the Unknown}, Holden-Day. 
}
\examples{
str(case0502)                                                                         # Show structure of data frame.
attach(case0502)                                                                      # Attach data frame to R search path.

## EXPLORATION
myNames  <- c("A (5)", "B (6)", "C (9)", "D (2)", "E (6)", "F (9)", "Spock's (9)" )   # Make labels for boxplots.
boxplot(Percent ~ Judge,                                                              # Draw boxplots of Percent for each level of Judge, with
  ylab = "Percent of Women on Judges' Venires",                                       # ...y-axis label,
  names = myNames,                                                                    # ...names under the boxplots,
  xlab = "Judge (and number of venires)",                                             # ...x-axis label, and
  main = "Percent Women on Venires of 7 Massachusetts Judges")                        # ...main title. 
myAov1  <- aov(Percent ~ Judge)                                                       # Perform analysis of variance calculations with response variable Percent and explanatory factor Judge.
plot(myAov1, which=1)                                                                 # Draw a plot of residuals versus fitted values (i.e. estimated means).
summary(myAov1)                                                                       # Show the F-test for hypothesis that all 7 judges have a common mean.
   
## ANALYSIS 1. TWO-SAMPLE t-TEST (ASSUMING NON-SPOCK JUDGES HAVE A COMMON MEAN)
SpockOrOther <- ifelse(Judge=="Spock's","Spock","Other")                              # Create a factor with 2 levels, combining all "other" judges into one group.                                                
aovFull      <- aov(Percent ~ Judge)                                                  # Fit the full model with 7 means for 7 judges.
aovReduced   <- aov(Percent ~ SpockOrOther)                                           # Fit the reduced model with 2 means; 1 for Spock's judge and 1 for all others.
anova(aovReduced,aovFull)                                                             # Perform the extra sum of squares F-test to judge the adequacy of the two-mean model. 
t.test(Percent ~ SpockOrOther,                                                        # Perform a two-sample t-test, comparing Spock mean to others,
    var.equal=TRUE)                                                                      # ...using equal variance version.

## ANALYSIS 2. COMPARE SPOCK MEAN TO AVERAGE OF OTHER MEANS (NOT ASSUMING NON-SPOCK JUDGES HAVE A COMMON MEAN)
library(multcomp)                                                                     # Attach multcomp library (after installing the package once). 
myAov3        <- aov(Percent ~ Judge - 1)                                             # Fit with the model with separate means (the "-1" specifies a separate mean parameter for each judge; as needed for glht below).
myContrast    <- rbind(c(1/6, 1/6, 1/6, 1/6, 1/6, 1/6, - 1))                          # Create a one-row matrix with coefficients of the linear combination.
myComparison  <- glht(myAov3, linfct=myContrast)                                      # Perform "general linear hypothesis test" (glht) calculations for myContrast.
summary(myComparison, test=adjusted("none"))                                          # Show a p-value for a test that the contrast is zero.
confint(myComparison)                                                                 # Show a confidence interval for the contrast.

## BOXPLOTS FOR PRESENTATION   
boxplot(Percent ~ Judge,                                                              # Draw boxplots of Percent for each level of Judge, with
  ylab= "Percent of Women on Judges' Venires",                                        # ...y-axis label,
  names=myNames,                                                                      # ...names under the boxplots,
  xlab="Judge (and number of venires)",                                               # ...x-axis label,
  main= "Percent Women on Venires of 7 Massachusetts Judges",                         # ...main title
  col="green",                                                                        # ...green fill color,
  boxlwd=2,                                                                           # ...line widths in box equal to twice their default value,
	medlwd=2,                                                                           # ...line widths of horizontal lines at medians equal twice their default value,
	whisklty=1,                                                                         # ...solid (=1) (not dashed =2) whiskers (lines extending from boxes),
	whisklwd=2,                                                                         # ...line width of whiskers equal to twice their default value,
	staplewex=.2,                                                                       # ...length of staple (horizontal line at end of whisker) 0.2 times its default value, 
	staplelwd=2,                                                                        # ...line width of staple equal to twice its default value,
	outlwd=2,                                                                           # ...line width of outliers (plotted points beyond whiskers) equal to twice their default value.
	outpch=21,                                                                          # ...plotting character for outlier set to be a circle (21 is the code for circle),
	outbg="green",                                                                      # ...background (fill) color for the outlier set to green, and
	outcex=1.5	)	                                                                      # ...outlier size set to be 1.5 times the default value.
	
detach(case0502)                                                                      # Detach data frame from R search path.
}
\keyword{datasets}
