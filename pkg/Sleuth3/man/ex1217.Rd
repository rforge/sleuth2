\name{ex1217}
\alias{ex1217}
\docType{data}
\title{Pollution and Mortality}
\description{
  Complete data set for problem introduced in \code{\link{ex1123}}.
  Data from early study designed to explore the relationship between air
  pollution and mortality.
}
\usage{ex1217}
\format{
  A data frame with 60 observations on the following 17 variables.
  \describe{
    \item{\code{CITY}}{a character vector indicating the city}
    \item{\code{Mortality}}{total age-adjusted mortality from all causes}
    \item{\code{Precip}}{mean annual precipitation (inches)} 
    \item{\code{Humidity}}{percent relative humidity (annual average at 1:00pm)}
    \item{\code{JanTemp}}{mean January temperature (degrees F)}
    \item{\code{JulyTemp}}{mean July temperature (degrees F)}
    \item{\code{Over65}}{percentage of the population aged 65 years or over}
    \item{\code{House}}{population per household}
    \item{\code{Educ}}{median number of school years completed for
      persons 25 years or older} 
    \item{\code{Sound}}{percentage of the housing that is sound with all
      facilities} 
    \item{\code{Density}}{population density (in persons per square mile
      of urbanized area)} 
    \item{\code{NonWhite}}{percentage of population that is nonwhite}
    \item{\code{WhiteCol}}{percentage of employment in white collar occupations}
    \item{\code{Poor}}{percentage of households with annual income under
      \eqn{\$}{$}3,000 in 1960} 
    \item{\code{HC}}{relative pollution potential of hydrocarbons}
    \item{\code{NOX}}{relative pollution potential of oxides of nitrogen}
    \item{\code{SO2}}{relative pollution potential of sulfur dioxide}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  McDonald, G.C. and Ayers, J.A. (1978).  Some Applications of the
  \dQuote{Chernoff Faces}: A Technique for Graphically Representing
  Multivariate Data \emph{in} Wang, P.C.C. (ed.) \emph{Graphical
  Representation of Multivariate Data}, Academic Press.
}
\seealso{
  \code{\link{ex1123}}
}
\examples{
str(ex1217)
}
\keyword{datasets}
