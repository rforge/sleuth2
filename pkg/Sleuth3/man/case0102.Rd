\name{case0102}
\alias{case0102}
\docType{data}
\title{Sex Discrimination in Employment}
\description{
  The data are the beginning salaries for all 32 male and all 61 female
  skilled, entry--level clerical employees hired by a bank between 1969
  and 1977.
}
\usage{case0102}
\format{
  A data frame with 93 observations on the following 2 variables.
  \describe{
    \item{\code{Salary}}{starting salaries (in US\eqn{\$}{$})}
    \item{\code{Sex}}{sex of the clerical employee, with levels "Female" and "Male"}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2012). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Duxbury.
}
\references{
  Roberts, H.V. (1979). Harris Trust and Savings Bank: An Analysis of
  Employee Compensation, \emph{Report 7946}, Center for Mathematical
  Studies in Business and Economics, University of Chicago Graduate
  School of Business.
}
\seealso{
  \code{\link{case1202}}
}
\examples{
attach(case0102)                                                                # Attach the data frame case0102 to the R search path.
str(case0102)                                                                   # Show the structure of the data frame case0102.

boxplot(Salary ~ Sex)                                                           # Draw boxplots of Salary for each level of Sex. 

boxplot(Salary ~ Sex,                                                           # Draw boxplots, with...
  ylab= "Starting Salary (U.S. Dollars)",                                       # ...y-axis label,
  names=c("61 Females","32 Males"),                                             # ...names below the boxplots, and
  main= "Harris Bank Entry Level Clerical Workers, 1969-1971")                  # ...main title.

hist(Salary[Sex=="Female"])                                                     # Draw a histogram of Salary for females only.
if(interactive()) dev.new()                                                     # Open a new graphic window.
hist(Salary[Sex=="Male"])                                                       # Draw a histogram of Salary for males only

t.test(Salary ~ Sex,                                                            # Perform the two-sample t-test...
  var.equal=TRUE)                                                                  # ...using the equal variance version.
t.test(Salary ~ Sex,                                                            # Perform the two-sample t-test...
  var.equal=TRUE,                                                                  # ...using the equal variance version...
  alternative = "less")                                                         # ...and with alternative hypothesis that Group 1 mean (female) is less than Group 2 mean.
detach(case0102)                                                                # Detach the data frame from the R search path.
}

\keyword{datasets}
