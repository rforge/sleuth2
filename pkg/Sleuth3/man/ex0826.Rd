\name{ex0826}
\alias{ex0826}
\docType{data}
\title{Kleiber's Law}
\description{
  The data are the average mass, metabolic rate, and lifespan for 95 species of 
  mammals. Kleiber's law states that the metabolic rate of an animal species, on 
  average, is proportional to its mass raised to the power of 3/4.
}
\usage{ex0826}
\format{
  A data frame with 95 observations on the following 5 variables.
  \describe{
    \item{\code{CommonName}}{the common name of the mammal species}
    \item{\code{Species}}{the scientific name of the mammal species}
    \item{\code{Mass}}{the average body mass in kg}
    \item{\code{Metab}}{the average metabolic rate in kJ per day}
    \item{\code{Life}}{the average lifespan in years}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\examples{
str(ex0826)
}
\keyword{datasets}
