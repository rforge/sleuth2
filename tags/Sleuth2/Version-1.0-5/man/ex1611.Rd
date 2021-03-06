\name{ex1611}
\alias{ex1611}
\docType{data}
\title{Religious Competition}
\description{
  Adam Smith, in Wealth of Nations, observed that even religious
  monopolies become weak when they are not challenged by competition.
  Data to illustrate this point is from 21 countries in which the
  percentages of Catholics in the populations varied from a low 1.2\% to
  a high 97.6\%.
}
\usage{ex1611}
\format{
  A data frame with 21 observations on the following 4 variables.
  \describe{
    \item{\code{Country}}{a character vector indicating the country}
    \item{\code{PctCath}}{percent Catholics in the population}
    \item{\code{P2PRatio}}{priest to parishioner ratio}
    \item{\code{PctIndig}}{percent clergy indigenous}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2002). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (2nd ed)}, Duxbury.
}
\references{
  Gill, A.J. (1994).  Rendering unto Caesar?  Religious Competition and
  Catholic Political Strategy in Latin America, 1962--79, \emph{American
  Journal of Political Science} \bold{38}(2): 403--425.
}
\examples{
str(ex1611)
}
\keyword{datasets}
