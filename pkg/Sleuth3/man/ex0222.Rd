\name{ex0222}
\alias{ex0222}
\docType{data}
\title{Male and Female Intelligence}
\description{
  These data are armed Forces Qualifying Test (AFQT) score percentiles and 
  component test scores in arithmetic reasoning, word knowledge, paragraph 
  comprehension, and mathematical knowledge for a sample of 1,278 U.S. women 
  and 1,306 U.S. men in 1981.
}
\usage{ex0222}
\format{
  A data frame with 2,584 observations on the following 2 variables.
  \describe{
    \item{\code{Gender}}{a factor with levels \code{"female"} and \code{"male"}}
    \item{\code{Arith}}{score on the arithmetic reasoning component of the AFQT test}
    \item{\code{Word}}{score on the word knowledge component}
    \item{\code{Parag}}{score on the paragraph comprehension component}
    \item{\code{Math}}{score on the mathematical knowledge component }
    \item{\code{AFQT}}{percentile score on the AFQT test}
      
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
  \code{\link{ex0330}}, \code{\link{ex0331}}, \code{\link{ex0524}},
  \code{\link{ex0525}}, \code{\link{ex0828}}, \code{\link{ex0923}},
  \code{\link{ex1033}}, \code{\link{ex1223}}, \code{\link{ex1616}},
  \code{\link{ex1617}}, \code{\link{ex1717}}, \code{\link{ex1718}},
  \code{\link{ex2020}}
}
\examples{
str(ex0222)
}
\keyword{datasets}
