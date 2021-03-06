\name{ex2118}
\alias{ex2118}
\docType{data}
\title{HIV and Circumcision}
\description{
  Researchers in Kenya identified a cohort of more that 1,000
  prostitutes who were known to be a major reservoir of sexually
  transmitted diseases in 1985.  It was determined that more than 85\%
  of them were infected with human immunodeficiency virus (HIV) in
  February, 1986.  The researchers identified men who acquired a
  sexually-transmitted disease from this group of women after the men
  sought treatment at a free clinic.  The data frame contains data on
  the subset of those men who did not test positive for HIV on their
  first visit and who agreed to participate in the study.  The men are
  categorised according to whether they later tested positive for HIV
  during the study period, whether they had one or multiple sexual
  contacts with the prostitutes and whether they were circumcised.
}
\usage{ex2118}
\format{
  A data frame with 4 observations on the following 5 variables.
  \describe{
    \item{\code{Contact}}{Whether men had single or multiple contact with prostitutes}
    \item{\code{Circumcised}}{Whether the men are circumcised, factor with
      levels \code{"no"} and \code{"yes"}}
    \item{\code{HIV}}{Number of men that tested positive for HIV}
    \item{\code{Number}}{Number of men}
    \item{\code{NoHIV}}{Number of men that did not test positive for HIV
      (should be \code{Number}-\code{HIV})}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2002). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (2nd ed)}, Duxbury.
}
\references{
  Cameron, D.W. et al. (1999). Female to Male Transmission of Human
  Immunodeficiency Virus Type I: Risk Factors for Seroconversion in Men,
  \emph{The Lancet}: 403--407.
}
\examples{
str(ex2118)
}
\keyword{datasets}
