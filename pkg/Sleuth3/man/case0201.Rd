\name{case0201}
\alias{case0201}
\docType{data}
\title{Peter and Rosemary Grant's Finch Beak Data}
\description{
In the 1980s, biologists Peter and Rosemary Grant caught and measured all the birds from more than 20 generations of finches on the Galapagos island of Daphne Major. In one of those years, 1977, a severe drought caused vegetation to wither, and the only remaining food source was a large, tough seed, which the finches ordinarily ignored. Were the birds with larger and stronger beaks for opening these tough seeds more likely to survive that year, and did they tend to pass this characteristic to their offspring? The data are beak depths (height of the beak at its base) of 89 finches caught the year before the drought (1976) and 89 finches captured the year after the drought (1978). 
}

\usage{case0201}
\format{
  A data frame with 178 observations on the following 2 variables.
  \describe{
    \item{\code{Year}}{Year the finch was caught, 1976 or 1978}
    \item{\code{Depth}}{Beak depth of the finch (mm)}
  }
}

\source{
  Ramsey, F.L. and Schafer, D.W. (2012). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Duxbury.
}

\references{
  Grant, P. (1986). \bold{Ecology and Evolution of Darwin's Finches}, Princeton University Press, Princeton, N.J.
}

\seealso{
  \code{\link{ex2018}}
}

\examples{
attach(case0201)                                              # Attach the data frame case0201 to the R search path.
str(case0201)                                                 # Show the structure of the data frame case0201. 

boxplot(Depth ~ Year)                                         # Draw boxplots of Depth for each level of Year.

mean(Depth[Year==1978]) - mean(Depth[Year==1976])             # Calculate the average Depth in Year 1978 minus the average Depth in 1976.                                                              

yearFactor <- factor(Year)                                    # Create a factor with 2 levels ("1976" and "1978") from the numerical variable Year.
t.test(Depth ~ yearFactor,                                    # Perform the two-sample t-test (Syntax: numerical variable ~ factor with 2 levels)...
  var.equal=TRUE)                                                # ...using the equal variance version ("T" means TRUE).                      
t.test(Depth ~ yearFactor,                                    # Perform the two-sample t-test,
  var.equal=TRUE,                                                # ...using the equal-variance version, and 
  alternative = "less")                                       # ...with alternative hypothesis that the Group 1 (1976, which comes first alpha-numerically) mean is less thn Group 2.

boxplot(Depth ~ Year,                                         # Draw boxplots of Depth for each level of Year, with ...
  ylab= "Beak Depth (mm)",                                    # ...y-axis label
  names=c("89 Finches in 1976","89 Finches in 1978"),         # ...names below the boxplots, and
  main= "Beak Depths of Darwin Finches in 1976 and 1978")     # ...main title.

## BOXPLOTS FOR PRESENTATION
boxplot(Depth ~ Year,                                         # Draw boxplots of Depth for each level of Year, with
	ylab="Beak Depth (mm)",                                     # ...y-axis label,
	names=c("89 Finches in 1976","89 Finches in 1978"),         # ...names below the two boxplots,
	main="Beak Depths of Darwin Finches in 1976 and 1978",      # ...main title,
	col="green",                                                # ...green fill color,
  boxlwd=2,                                                   # ...line widths in box equal to twice their default value,
	medlwd=2,                                                   # ...line widths of horizontal lines at medians equal twice their default value,
	whisklty=1,                                                 # ...solid (=1) (not dashed =2) whiskers (lines extending from boxes),
	whisklwd=2,                                                 # ...line width of whiskers equal to twice their default value,
	staplewex=.2,                                               # ...length of staple (horizontal line at end of whisker) 0.2 times its default value, 
	staplelwd=2,                                                # ...line width of staple equal to twice its default value,
	outlwd=2,                                                   # ...line width of outliers (plotted points beyond whiskers) equal to twice their default value.
	outpch=21,                                                  # ...plotting character for outlier set to be a circle (21 is the code for circle),
	outbg="green",                                              # ...background (fill) color for the outlier set to green, and
	outcex=1.5	)	                                              # ...outlier size set to be 1.5 times the default value.
	
detach(case0201)                                              # Detach the data frame from the R search path.
}

\keyword{datasets}
