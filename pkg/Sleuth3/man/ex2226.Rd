\name{ex2226}
\alias{ex2226}
\docType{data}
\title{Number of Moons}
\description{
  Apparently, larger planets have more moons, but is it the volume (as indicated 
  by diameter) or mass that are more relevant, or is it both? These data include
  the diameter, mass, distance from the sun, and number of moons for 13 planets,
  gas giants, and dwarf planets in our solar system. Which size variable best
  explains mean number of moons (possible after accounting for distance from
  sun). (Consider negative binomial regression.)
}
\usage{ex2226}
\format{
  A data frame with 38 observations on the following 2 variables.
  \describe{
    \item{\code{Name}}{a character variable with the name of the planet, gas
      giant, or dwarf planet)}
    \item{\code{Distance}}{distance from sun, relative to earth's}
    \item{\code{Diameter}}{diameter of the planet, relative to earth's}
    \item{\code{Mass}}{mass, relative to earth's}
    \item{\code{Moons}}{number of moons}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
   Wikipedia: \url{http://en.wikipedia.org/wiki/Planet}
   August 10, 2011
}
\seealso{
  \code{\link{ex0721}}, \code{\link{ex0818}}
}
\examples{
str(ex2226)
}
\keyword{datasets}
