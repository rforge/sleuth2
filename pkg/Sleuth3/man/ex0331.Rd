\name{ex0331}
\alias{ex0331}
\docType{data}
\title{Education and Income}
\description{
  The data are incomes in U.S. dollars for 406 working Americans who had 16
  years of education and 374 working Americans who had more than 16 years of 
  education, in 2005.
}
\usage{ex0331}
\format{
  A data frame with 780 observations on the following 3 variables.
  \describe{
    \item{\code{Subject}}{a subject identification number}
    \item{\code{Educ}}{factor with levels \code{"16"} and \code{">16"}}
    \item{\code{Income2005}}{income, in dollars}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  National Longitudinal Survey of Youth, U.S. Bureau of Labor Statistics, 
  http://www.bls.gov/nls/home.htm (May 8, 2008). 
}
\seealso{
  \code{\link{ex0222}}, \code{\link{ex0330}}, \code{\link{ex0524}},
  \code{\link{ex0525}}, \code{\link{ex0828}}, \code{\link{ex0923}},
  \code{\link{ex1033}}, \code{\link{ex1223}}, \code{\link{ex1616}},
  \code{\link{ex1617}}, \code{\link{ex1717}}, \code{\link{ex1718}},
  \code{\link{ex2020}} 
}
\examples{
str(ex0331)
}
\keyword{datasets}
