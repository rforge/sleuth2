\name{case0301}
\alias{case0301}
\docType{data}
\title{Cloud Seeding}
\description{
  Does dropping silver iodide onto clouds increase the amount of
  rainfall they produce? In a randomized experiment, researchers
  measured the volume of rainfall in a target area (in acre-feet) on 26
  suitable days in which the clouds were seeded and on 26 suitble days
  in which the clouds were not seeded.  
}
\usage{case0301}
\format{
  A data frame with 52 observations on the following 2 variables.
  \describe{
    \item{\code{Rainfall}}{the volume of rainfall in the target area (in acre-feet)}
    \item{\code{Treatment}}{a factor with levels \code{"Unseeded"} and
      \code{"Seeded"} indicating whether the clouds were unseeded or seeded.}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2012). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Duxbury.
}
\references{
Simpson, J., Olsen, A., and Eden, J. (1975). A Bayesian Analysis of a
Multiplicative Treatment Effect in Weather
Modification. \emph{Technometrics} \bold{17}: 161--166.
}
\examples{
attach(case0301)                                                   # Attach the data frame case0301 to the R search path.
str(case0301)                                                      # Show the structure of the data frame.

boxplot(Rainfall ~ Treatment)                                      # Draw boxplots of Rainfall for each level of Treatment.
boxplot(log(Rainfall) ~ Treatment)                                 # Draw boxplots of the natural logarithm of Rainfall for each levl of Treatment.

t.test(log(Rainfall) ~ Treatment,                                  # Perform the two-sample t-test of the null hypothesis that the means of log(Rainfall) are equal for the two levels of Treatment, with
	alternative="greater",                                           # ...alternative hypothesis that group 1 mean (Seeded, which comes first alpha-numerically) is greater, and
	var.equal=TRUE)                                                     # ...use the equal variance version.
	
myTest <- t.test(log(Rainfall) ~ Treatment,                        # Perform two-sample t-test and store results in object myTest, with
  alternative="two.sided",                                         # ...alternative that group means differ (for getting a2-sided confidence interval), and
  var.equal=TRUE)                                                     # ...use the equal-variance version.
exp(myTest$est[1] - myTest$est[2])                                 # Back-transform the estimated difference in means on the log scale.
exp(myTest$conf)                                                   # Back-transform the endpoints of the confidence interval. 

boxplot(log(Rainfall) ~ Treatment,                                 # Draw boxplots of log(Rainfall) for each level of Treatment, with
  ylab="Log of Rainfall Volume in Target Area (Acre Feet)",        # ...y-axis label,
  names=c("On 26 Seeded Days", "On 26 Unseeded Days"),             # ...names below boxes, and
  main="Distributions of Rainfalls from Cloud Seeding Experiment") # ...main title.

## Example of polished display for presentation:
boxplot(log(Rainfall) ~ Treatment,                                 # Draw boxplots of log(Rainfall) for each level of Treatment, with
	ylab="Log Rainfall (Acre-Feet)",                                 # ...y-axis label,
	names=c("on 26 seeded days","on 26 unseeded days"),              # ...names below boxes,
	main="Boxplots of Rainfall on Log Scale",                        # ...main title
	col="green",                                                     # ...green fill color,
  boxlwd=2,                                                        # ...line widths in box equal to twice their default value,
	medlwd=2,                                                        # ...line widths of horizontal lines at medians equal twice their default value,
	whisklty=1,                                                      # ...solid (=1) (not dashed =2) whiskers (lines extending from boxes),
	whisklwd=2,                                                      # ...line width of whiskers equal to twice their default value,
	staplewex=.2,                                                    # ...length of staple (horizontal line at end of whisker) 0.2 times its default value, 
	staplelwd=2,                                                     # ...line width of staple equal to twice its default value,
	outlwd=2,                                                        # ...line width of outliers (plotted points beyond whiskers) equal to twice their default value.
	outpch=21,                                                       # ...plotting character for outlier set to be a circle (21 is the code for circle),
	outbg="green",                                                   # ...background (fill) color for the outlier set to green, and
	outcex=1.5	)	                                                   # ...outlier size set to be 1.5 times the default value.
myTicks <- c(1,5, 10,100,500,1000,2000,3000)                       # Create values for y-axis ticks on the original scale of Rainfall, which ranges from 1 to about 3,000
axis(4, at=log(myTicks),                                           # Add tick marks at log(myTicks) to the right hand side of the plot (side= 4), and
  label=myTicks)                                                   # ...use MyTicks as labels.
mtext("Rainfall (Acre Feet)",                                      # Add this text outside of the plotting region,
  side=4,                                                          #...on side 4 (right hand side), and
  line=2.5)                                                        #...2.5 lines outside the plot boundary.
  
detach(case0301)                                                   # Detach case0301 form R Search path.
}
\keyword{datasets}
