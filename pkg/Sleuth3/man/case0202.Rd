\name{case0202}
\alias{case0202}
\docType{data}
\title{Anatomical Abnormalities Associated with Schizophrenia}
\description{
  Are any physiological indicators associated with schizophrenia?  In a
  1990 article, researchers reported the results of a study that
  controlled for genetic and socioeconomic differences by examining 15
  pairs of monozygotic twins, where one of the twins was schizophrenic
  and the other was not.  The researchers used magnetic resonance
  imaging to measure the volumes (in cm$^3$) of several regions and
  subregions of the twins' brains.
}
\usage{case0202}
\format{
  A data frame with 15 observations on the following 2 variables.
  \describe{
    \item{\code{Unaffected}}{volume of left hippocampus of unaffected twin (in cm\eqn{^3})}
    \item{\code{Affected}}{volume of left hippocampus of affected twin (in cm\eqn{^3})}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2012). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Duxbury.
}
\references{
  Suddath, R.L., Christison, G.W., Torrey, E.F., Casanova, M.F. and
  Weinberger, D.R. (1990).  Anatomical Abnormalities in the Brains of
  Monozygotic Twins Discordant for Schizophrenia, \emph{New England
  Journal of Medicine} \bold{322}(12): 789--794.
}
\examples{
attach(case0202)                                                      # Attach the data frame case0201 to the R search path.
str(case0202)                                                         # Show the structure of the data frame case0202. 

diff <- Unaffected-Affected                                           # Calculate the difference from each pair.
summary(diff)                                                         # Show summary statistics for the variable "diff".
boxplot(diff)                                                         # Draw a boxplot of diff. (Note syntax: boxplot(oneVariable) draws a single boxplot of oneVariable.)
abline(h=0)                                                           # Draw a horizontal line at 0 on the plot.                       

t.test(diff)                                                          # Perform a one-sample t-test on differences (Syntax: t.test(oneVariable) performs a one-sample t-test).
t.test(Unaffected,Affected,pair=TRUE)                                 # Perform a paired t-test on Unaffected and Affected (equivalent to t.test(diff)).

boxplot(diff,                                                         # Draw a boxplot of diff, with 
	ylab="Difference in Hippocampus Volume (cubic cm)",                 # ...y-axis label,
	xlab="15 Sets of Twins, One Affected with Schizophrenia",           # ...x-axis label, and
	main="Hippocampus Difference: Unaffected Twin Minus Affected Twin") # ...main title. 
abline(h=0,                                                           # Draw a horizontal line at 0, with
  lty=2)                                                              # ...line type 2 (a dashed line).
  
## Example of a polished boxplot for presentation:
boxplot(diff,                                                         # Draw a boxplot of diff, with
	ylab="Difference in Hippocampus Volume (cubic cm)",                 # ...y-axis label,
	xlab="15 Sets of Twins, One Affected with Schizophrenia",           # ...x-axis label,
	main="Hippocampus Difference: Unaffected Minus Affected Twin",      # ...main title,
	col="green",                                                        # ...green fill color,
  boxlwd=2,                                                           # ...line widths in box equal to twice their default value,
	medlwd=2,                                                           # ...line widths of horizontal lines at medians equal twice their default value,
	whisklty=1,                                                         # ...solid (=1) (not dashed =2) whiskers (lines extending from boxes),
	whisklwd=2,                                                         # ...line width of whiskers equal to twice their default value,
	staplewex=.2,                                                       # ...length of staple (horizontal line at end of whisker) 0.2 times its default value, 
	staplelwd=2,                                                        # ...line width of staple equal to twice its default value,
	outlwd=2,                                                           # ...line width of outliers (plotted points beyond whiskers) equal to twice their default value.
	outpch=21,                                                          # ...plotting character for outlier set to be a circle (21 is the code for circle),
	outbg="green",                                                      # ...background (fill) color for the outlier set to green, and
	outcex=1.5	)	                                                      # ...outlier size set to be 1.5 times the default value.
abline(h=0,lty=2)                                                     # Draw a dashed (lty=2) horizontal line (h=...) at 0 for reference

detach(case0202)                                                      # Detach the data frame from the R search path.
}
\keyword{datasets}
