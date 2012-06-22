\name{case0101}
\alias{case0101}
\docType{data}
\title{Motivation and Creativity}
\description{
  Data from an experiment concerning the effects of intrinsic and
  extrinsic motivation on creativity.  Subjects with considerable
  experience in creative writing were randomly assigned to on of two
  treatment groups.
}
\usage{case0101}
\format{
  A data frame with 47 observations on the following 2 variables.
  \describe{
    \item{\code{Score}}{creativity score}
    \item{\code{Treatment}}{factor denoting the treatment group, with levels "Extrinsic" and "Intrinsic"}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2012). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Duxbury.
}
\references{
  Amabile, T. (1985). Motivation and Creativity: Effects of Motivational
  Orientation on Creative Writers, \emph{Journal of Personality and
    Social Psychology} \bold{48}(2): 393--399.
}
\examples{
attach(case0101)                                                                # Attach the data frame case0101 to the R search path.
str(case0101)                                                                   # Show the structure of the data frame case0101.

boxplot(Score ~ Treatment)                                                      # Draw a boxplot of Score for each level of Treatment. (Syntax: boxplot(numerical variable ~ factor).)

boxplot(Score ~ Treatment,                                                      # Draw boxplots, with ...
  ylab= "Average Creativity Score From 11 Judges (on a 40-point scale)",        # ...y-axis label,
  names=c("23 'Extrinsic' Group Students","24 'Intrinsic' Group Students"),     # ...names below the boxplots,and
  main= "Haiku Creativity Scores for 47 Creative Writing Students")             # ...main title.

detach(case0101)                                                                # Detach the data frame from the R search path.
}
\keyword{datasets}
