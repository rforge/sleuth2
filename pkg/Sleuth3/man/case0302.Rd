\name{case0302}
\alias{case0302}
\docType{data}
\title{Agent Orange}
\description{
  In 1987, researchers measured the TCDD concentration in blood samples
  from 646 U.S. veterans of the Vietnam War and from 97 U.S. veterans
  who did not serve in Vietnam. TCDD is a carcinogenic dioxin in the
  herbicide called Agent Orange, which was used to clear jungle hiding
  areas by the U.S. military in the Vietnam War between 1962 and 1970.
}
\usage{data(case0302)}
\format{
  A data frame with 743 observations on the following 2 variables.
  \describe{
    \item{\code{Dioxin}}{the concentration of TCDD, in parts per trillion}
    \item{\code{Veteran}}{factor variable with two levels,
      \code{"Vietnam"} and \code{"Other"}, to indicate the type of veteran}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2012). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Duxbury.
}
\references{
  Centers for Disease Control Veterans Health Studies: Serum
  2,3,7,8-Tetraclorodibenzo-p-dioxin Levels in U.S. Army Vietnam-era
  Veterans.  \emph{Journal of the American Medical Association}
  \bold{260}: 1249--1254. 
}
\examples{
attach(case0302)                                                                            # Attach data frame case0302 to R search path.
str(case0302)                                                                               # Show the structure of the data frame.

boxplot(Dioxin ~ Veteran)                                                                   # Draw boxplots of Dioxin for each level of Veteran.

t.test(Dioxin ~ Veteran,                                                                    # Perform two-sample t-test of the null hypothesis that mean Dioxin is the same for each level of Veteran,
  alternative="less",                                                                       # ...with the alternative hypothesis that group 1 (Other, which comes first alphanumerically) mean is less, and
  var.equal=TRUE)                                                                              # ...use the equal variance version of the test.
t.test(Dioxin ~ Veteran,                                                                    # Perform the two-sample t-test,
  subset=(Dioxin < 40),                                                                     # ...applied to the subset of observations for which Dioxin < 40,
  alternative="less",                                                                       # ...with alternative that group 1 mean is less than group 2 mean, and
  var.equal=TRUE)                                                                              # ...using the equal variance version of the test.
t.test(Dioxin ~ Veteran,                                                                    # Perform the two-sample t-test, with 
  subset=(Dioxin < 20),                                                                     # ...the subset of observations for which Dioxin < 20,
  alternative="less",                                                                       # ...with alternative that group 1 mean is less, and
  var.equal=TRUE)                                                                              # ...using the equal variance version of the test.
t.test(Dioxin ~ Veteran,                                                                    # Perform the two-sample t-test (with default 2-sided alternative in order to get confidence interval),
  var.equal=TRUE)                                                                              # ...using the equal variance version of the test.

## Example of polished histograms for presentation                                          # Note: histograms seem to reveal the distributions better than boxplots for this data set.
par(mfrow=c(2,1),                                                                           # Set graphical parameters, with mfrow=c(2,1) for a panel of graphs in 2 rows and 1 column, and
  mar=c(2,2,1,1))                                                                           # ...with margins of 2 lines below and to the left, and 1 line above and to the right of the plot.
myBreaks <- (0:46) - .5                                                                     # Create a variable of breaks at -.5, 1.5,...,45.5 for specifying customized histogram bins.
hist(Dioxin[Veteran=="Other"],                                                              # Draw a histogram of Dioxin for Other veterans,
  breaks=myBreaks,                                                                          # ...using myBreaks to define histogram bins,
  xlim=range(Dioxin),                                                                       # ...with the x-axis spanning the entire range of Dioxin,
  col="green",                                                                              # ...with green fill color,
  xlab="",                                                                                  # ...with no x-axis label,
  ylab="",                                                                                  # ...with no y-axis label,
  main="")                                                                                  # ...and no main title.
text(6,25,                                                                                  # Write the following text at x=6, y=25:
  "Dioxin in 97 'Other' Veterans; Estimated mean =  4.19 ppt (95\% CI: 3.72 to 4.65 ppt)",   
  pos=4,                                                                                    # ...so that text is left justified at that point (not centered, for example), and
  cex=.75)                                                                                  # ...using character expansion factor 0.75.
hist(Dioxin[Veteran=="Vietnam"],                                                            # Draw a histogram of Dioxin for Vietnam veterans,
  breaks=myBreaks,                                                                          # ...using myBreaks to define histogram bins,
  xlim=range(Dioxin),                                                                       # ...with the x-axis spanning the entire range of Dioxin,
  col="green",                                                                              # ...with green fill color,
  xlab="",                                                                                  # ...with no x-axis label,
  ylab="",                                                                                  # ...with no y-axis label,
  main="")                                                                                  # ...and no main title.
text(6,145,                                                                                 # Write the following text at x=6, y=145:
  "Dioxin in 646 Vietnam Veterans; Estimated mean =  4.26 ppt (95\% CI: 4.06 to 4.64 ppt)",
  pos=4,                                                                                    # ...so that text is left justified at that point (not centered, for example), and
  cex=.75)                                                                                  # ...using character expansion factor 0.75.
text(25,70,                                                                                 # Write the following text at x=25, y = 70:
  "Estimated Difference in Means: 0.07 ppt (95\% CI: -0.63 to 0.48 ppt)")
  
detach(case0302)                                                                            # Detach case0302 from the R search path.
}
\keyword{datasets}
