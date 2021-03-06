\name{ex0730}
\alias{ex0730}
\docType{data}
\title{Brain Activity in Violin and String Players}
\description{
  Studies over the past two decades have shown that activity can effect
  the reorganisation of the human central nervous system.  For example,
  it is known that the part of the brain associated with activity of a
  finger or limb is taken over for other purposes in individuals whose
  limb or finger has been lost.  In one study, psychologists used
  magnetic source imaging (MSI) to measure neuronal activity in the
  brains of nine string players (six violinists, two cellists and one
  guitarist) and six controls who had never played a musical instrument,
  when the thumb and fifth finger of the left hand were exposed to mild
  stimulation.  The researchers felt that stringed instrument players,
  who use the fingers of their left hand extensively, might show
  different behaviour---as a result of this extensive physical
  activity---than individuals who did not play stringed instruments.
}
\usage{ex0730}
\format{
  A data frame with 15 observations on the following 2 variables.
  \describe{
    \item{\code{Years}}{years that the individual has been playing}
    \item{\code{Activity}}{neuronal activity index}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2002). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (2nd ed)}, Duxbury.
}
\references{
  Elbert et al. (1995).  Increased cortical representation of the
  fingers of the left hand in string players, \emph{Science} \bold{13}:
  305--307. 
}
\examples{
str(ex0730)
}
\keyword{datasets}
