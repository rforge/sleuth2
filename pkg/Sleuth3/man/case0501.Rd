\name{case0501}
\alias{case0501}
\docType{data}
\title{Diet Restriction and Longevity}
\description{
  Female mice were randomly assigned to six treatment groups to
  investigate whether restricting dietary intake increases life
  expectancy. Diet treatments were:
  \enumerate{
    \item \code{"NP"}---mice ate unlimited amount of nonpurified, standard
    diet
    \item \code{"N/N85"}---mice fed normally before and after weaning.
    After weaning, ration was controlled at 85 kcal/wk
    \item \code{"N/R50"}---normal diet before weaning and reduced calorie
    diet (50 kcal/wk) after weaning
    \item \code{"R/R50"}---reduced calorie diet of 50 kcal/wk both before
    and after weaning
    \item \code{"N/R50 lopro"}---normal diet before weaning, restricted
    diet (50 kcal/wk) after weaning and dietary protein content
    decreased with advancing age
    \item \code{"N/R40"}---normal diet before weaning and reduced diet (40
    Kcal/wk) after weaning.
  }
}
\usage{case0501}
\format{
  A data frame with 349 observations on the following 2 variables.
  \describe{
    \item{\code{Lifetime}}{the lifetime of the mice (in months)}
    \item{\code{Diet}}{factor variable with six levels---\code{"NP"},
      \code{"N/N85"}, \code{"lopro"}, \code{"N/R50"}, \code{"R/R50"} and
      \code{"N/R40"}}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2012). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Duxbury.
}
\references{
   Weindruch, R., Walford, R.L., Fligiel, S. and Guthrie D. (1986). The
   Retardation of Aging in Mice by Dietary Restriction: Longevity,
   Cancer, Immunity and Lifetime Energy Intake, \emph{Journal of
     Nutrition} \bold{116}(4):641--54. 
}
\examples{
str(case0501)
attach(case0501)

myDiet  <- factor(Diet, levels=c("NP","N/N85","N/R50","R/R50","lopro","N/R40") )  # Re-order levels to a more more natural progression (for boxplots). 
myNames <- c("NP(49)","N/N85(57)","N/R50(71)","R/R50(56)","lopro(56)","N/R40(60)")# Specify boxplot label names (to include sample sizes).
boxplot(Lifetime ~ myDiet,                                                        # Draw box plot of Lifetime for each level of myDiet, with
  ylab= "Lifetime (months)",                                                      # ...y-axis label, 
  names=myNames,                                                                  # ...names to go under the boxplots, and
  xlab="Treatment (and sample size)")                                             # ...x-axis label.
myAov1   <- aov(Lifetime ~ Diet)                                                  # Perform analysis of variance calculations. Note syntax: numerical response variable ~ factor (with any number of levels).
plot(myAov1, which=1)                                                             # Plot residuals versus fitted values.
summary(myAov1)                                                                   # Show analysis of variance table and F-test p-value.
pairwise.t.test(Lifetime,Diet,                                                    # Perform t-tests for all possible pairs of means,
  pool.SD=TRUE,                                                                   # ...using the equal variance (i.e. equal SD) version of the t-test, and
  p.adj="none")                                                                   # ...with no multiple comparison adjustment.

## p-VALUES AND CONFIDENCE INTERVALS FOR SPECIFIED COMPARISONS OF MEANS, USING GLHT IN MULTCOMP PACKAGE
diet    <- factor(Diet,labels=c("lopro", "NN85", "NR40", "NR50", "NP", "RR50"))   # Rename levels to omit "/" (necessary for glht below).
myAov2  <- aov(Lifetime ~ diet - 1)                                               # Perform analysis of variance calculations, with group mean parameterization ("-1", necessary for glht next).
library(multcomp)                                                                 # Attach multcomp library (after installing the package once).
myComparisons <- glht(myAov2,                                                     # Perform multiple comparisons on myAov3 results, with
        linfct=c("dietNR50 - dietNN85 = 0",                                       # ...on the specified contrasts
        "dietNR40  - dietNR50 = 0",
        "dietRR50  - dietNR50 = 0",
        "dietlopro - dietNR50 = 0",
        "dietNN85  - dietNP   = 0")   ) 
summary(myComparisons,test=adjusted("none"))                                      # Show the p-values, without adjustments for multiple comparisons. 
confint(myComparisons, calpha = univariate_calpha())                              # Show confidence intervals, without adjustments for multiple comparisons. 

## EXAMPLE 5: BOXPLOTS FOR PRESENTATION  
boxplot(Lifetime ~ myDiet,                                                        # Draw boxplots of Lifetime for each level of myDiet, with
	ylab= "Lifetime (months)",                                                      # ...y-axis label,
  names=myNames,                                                                  # ...names under the  boxplots,
  main= "Lifetimes of Mice on 6 Diet Regimens",                                   # ...main title,
  xlab="Diet (and sample size)",
	col="green",                                                                    # ...green fill color,
  boxlwd=2,                                                                       # ...line widths in box equal to twice their default value,
	medlwd=2,                                                                       # ...line widths of horizontal lines at medians equal twice their default value,
	whisklty=1,                                                                     # ...solid (=1) (not dashed =2) whiskers (lines extending from boxes),
	whisklwd=2,                                                                     # ...line width of whiskers equal to twice their default value,
	staplewex=.2,                                                                   # ...length of staple (horizontal line at end of whisker) 0.2 times its default value, 
	staplelwd=2,                                                                    # ...line width of staple equal to twice its default value,
	outlwd=2,                                                                       # ...line width of outliers (plotted points beyond whiskers) equal to twice their default value.
	outpch=21,                                                                      # ...plotting character for outlier set to be a circle (21 is the code for circle),
	outbg="green",                                                                  # ...background (fill) color for the outlier set to green, and
	outcex=1.5	)	                                                                  # ...outlier size set to be 1.5 times the default value.
		
detach(case0501)	                                                                # Detach data frame from R search path.

}
\keyword{datasets}
