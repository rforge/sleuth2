\name{case0301}
\alias{case0301}
\docType{data}
\title{Cloud Seeding}
\description{
  Does dropping silver iodide onto clouds increase the amount of
  rainfall they produce? In a randomized experiment, researchers
  measured the volume of rainfall in a target area (in acre-feet) on 26
  suitable days in which the clouds were seeded and on 26 suitble days
  in which the clouds were not seeded.  
}
\usage{case0301}
\format{
  A data frame with 52 observations on the following 2 variables.
  \describe{
    \item{\code{Rainfall}}{the volume of rainfall in the target area (in
      acre-feet)} 
    \item{\code{Treatment}}{a factor with levels \code{"Unseeded"} and
      \code{"Seeded"} indicating whether the clouds were unseeded or seeded.}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2012). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Duxbury.
}
\references{
Simpson, J., Olsen, A., and Eden, J. (1975). A Bayesian Analysis of a
Multiplicative Treatment Effect in Weather
Modification. \emph{Technometrics} \bold{17}: 161--166.
}
\examples{
attach(case0301) 
str(case0301)

boxplot(Rainfall ~ Treatment) 
boxplot(log(Rainfall) ~ Treatment)  

t.test(log(Rainfall) ~ Treatment, alternative="greater", var.equal=TRUE)
        
# Use 2-sided alternative to get a 2-sided confidence interval:
myTest <- t.test(log(Rainfall) ~ Treatment, alternative="two.sided", var.equal=TRUE) 
exp(myTest$est[1] - myTest$est[2])  # Back-transform estimate on log scale 
exp(myTest$conf) # Back transform endpoints of confidence interval 

boxplot(log(Rainfall) ~ Treatment, 
  ylab="Log of Rainfall Volume in Target Area (Acre Feet)", 
  names=c("On 26 Seeded Days", "On 26 Unseeded Days"), 
  main="Distributions of Rainfalls from Cloud Seeding Experiment") 

## POLISHED BOXPLOTS FOR PRESENTATION:
par(mar=c(4,4,4,4))
boxplot(log(Rainfall) ~ Treatment, 
        ylab="Log Rainfall (Acre-Feet)",
        names=c("on 26 seeded days","on 26 unseeded days"), 
        main="Boxplots of Rainfall on Log Scale",
        col="green", 
        boxlwd=2,
        medlwd=2, 
        whisklty=1, 
        whisklwd=2,
        staplewex=.2, 
        staplelwd=2,
        outlwd=2, 
        outpch=21, 
        outbg="green",  
        outcex=1.5      )        
myTicks <- c(1,5,10,100,500,1000,2000,3000) # Create some tick marks for original scale 
axis(4, at=log(myTicks), label=myTicks)   # Add original-scale axis on right    
mtext("Rainfall (Acre Feet)", side=4, line=2.5) # Add right-side axis label 

detach(case0301) 
}
\keyword{datasets}
