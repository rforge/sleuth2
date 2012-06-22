\name{case0402}
\alias{case0402}
\docType{data}
\title{Cognitive Load}
\description{
  Educational researchers randomly assigned 28 ninth-year students in
  Australia to receive coordinate geometry training in one of two ways: a
  conventional way and a modified way. After the training, the students
  were asked to solve a coordinate geometry problem. The time to complete
  the problem was recorded, but five students in the \dQuote{conventional}
  group did not complete the solution in the five minute alloted time.
}
\usage{case0402}
\format{
  A data frame with 28 observations on the following 3 variables.
  \describe{
    \item{\code{Time}}{the time (in seconds) that the student worked on the problem}
    \item{\code{Treatment}}{factor variable with two
      levels---\code{"Modified"} and \code{"Conventional"}} 
    \item{\code{Censored}}{1 if the individual did not complete the problem in 5
      minutes, 0 if they did} 
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2012). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Duxbury.
}
\references{
  Sweller, J., Chandler, P., Tierney, P. and Cooper, M. (1990).
  Cognitive Load as a Factor in the Structuring of Technical Material,
  \emph{Journal of Experimental Psychology General} \bold{119}(2):
  176--192. 
}
\examples{
str(case0402)                                                                   # Show the structure of the data frame.
attach(case0402)                                                                # Attach the data frame to the R search path.

boxplot(Time ~ Treatment)                                                       # Draw a box plot of Time for each level of the factor Treatment.
median(Time[Treatment=="Conventional"])-median(Time[Treatment=="Modified"])     # Compute the difference in sample medians.
  
wilcox.test(Time ~Treatment,                                                    # Compute the Wilcoxon rank-sum test (same syntax as for two-sample t-test),
    exact=FALSE,                                                                    # ...using the normal approximation, not the exact p-value (since there are ties),
    correct=TRUE,                                                                  # ...the continuity correction to improve the normal approximation, and
    alternative="greater")                                                      # ...with alternative hypothesis that group 1 ("Conventional", since it comes first alphabetically) tends to have GREATER completion times.  
wilcox.test(Time ~ Treatment,                                                   # Compute the Wilcoxon rank-sum test,
    exact=FALSE,                                                                    # ...using the normal approximation,
    correct=TRUE,                                                                  # ...using continuity correction, 
    alternative="two.sided",                                                    # ...using 2-sided alternative (to get 2-sided confidence interval), and 
    conf.int=TRUE)                                                                 # ...including a confidence interval.         
	
## DOT PLOTS FOR PRESENTATION 
xTreatment    <- ifelse(Treatment=="Conventional",1,2)                          # Make a numerical code for Treatment.
myPointCode   <- ifelse(Censored==0,21,24)                                      # Create a plotting code equal to 20 if uncensored, 24 if censored.
plot(Time ~ jitter(xTreatment,.2),                                              # Draw a scatterplot of Time vers xTreatment (jittered with jittering factor .2),
  ylab="Completion Time (Sec.)",                                                # ... with y-axis label,
  xlab="Training Method",                                                       # ... with x-axis label,
  main="Test Completion Times from Cognitive Load Experiment",                   # ... with title,
  axes=FALSE,                                                                       # ... with axes suppressed (to be added later),
  pch=myPointCode,                                                              # ... using point codes in myPointCode,
  bg="green",                                                                   # ... with point code fill color green,
  cex=2,                                                                        # ... with charactere expansion of point symbols twice the default value, and
  xlim=c(.5,2.5) )                                                              # ... with x-axis extending between .5 and 2.5.
axis(2)                                                                         # Add a y-axis, using default values.
axis(1,                                                                         # Add an x-axis, with
  tick=FALSE,                                                                       # ... no tick marks,
  at=c(1,2),                                                                    # ... labels at x = 1 and x = 2, and
  labels=c("Conventional (n=14 Students)","Modified (n=14 Students)") )         # ... using these labels.
legend(1.5,300,                                                                 # Add a plot legend with upper left  corner at x = 1.5, y = 300, with
  legend=c("Did not Complete in 300 sec","Completed in 300 sec."),              # ... these descriptions,
  pch=c(24,21),                                                                 # ... these plotting characters,
  pt.cex=2,                                                                     # ... point character expansion factor 2, and
  pt.bg="green")                                                                # ... point fill character green.
  
detach(case0402)                                                                # Detach the data frame from the R search path.
}

\keyword{datasets}
