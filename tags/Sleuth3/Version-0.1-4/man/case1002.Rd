\name{case1002}
\alias{case1002}
\docType{data}
\title{The Energy Costs of Echolocation by Bats}
\description{
  The data are on in--flight energy expenditure and body mass from 20
  energy studies on three types of flying vertebrates: echolocating
  bats, non--echolocating bats and non--echolocating birds.  
}
\usage{case1002}
\format{
  A data frame with 20 observations on the following 4 variables.
  \describe{
    \item{Mass}{mass (in grams)}
    \item{Type}{a factor with 3 levels indicating the type of flying
      vertebrate: non-echolocating bats, non-echolocating birds,   
      echolocating bats} 
    \item{Energy}{in--flight energy expenditure (in W)}
  }
}
\source{
  Ramsey, F.L. and Schafer, D.W. (2013). \emph{The Statistical Sleuth: A
    Course in Methods of Data Analysis (3rd ed)}, Cengage Learning.
}
\references{
  Speakman, J.R. and Racey, P.A. (1991).  No cost of Echolocation for
  Bats in Flight, \emph{Nature} \bold{350}: 421--423.
}
\examples{
str(case1002)
attach(case1002)
    
## EXPLORATION
plot(Energy~Mass, case1002, log="xy", xlab = "Body Mass (g) (log scale)",
  ylab = "Energy Expenditure (W) (log scale)", 
  pch = ifelse(Type=="echolocating bats", 19,
     ifelse(Type=="non-echolocating birds", 21, 24)))
legend(7, 50, pch=c(24, 21, 19),
     c("Non-echolocating bats", "Non-echolocating birds","Echolocating bats"))

logEnergy  <- log(Energy)
logMass <- log(Mass)
myLm2 <- lm(logEnergy ~ logMass + Type + logMass:Type)
plot(myLm2, which=1)                
myLm3 <- update(myLm2, ~ . - logMass:Type)  
anova(myLm3, myLm2)   # Test for interaction with extra ss F-test

## INFERENCE AND INTERPRETATION
myLm4 <- update(myLm3, ~ . - Type)  # Reduced model...with no effect of Type
anova(myLm4, myLm3)   # Test for Type effect
myType <- factor(Type,
 levels=c("non-echolocating bats","echolocating bats","non-echolocating birds"))
myLm3a <- lm(logEnergy ~ logMass + myType) 
summary(myLm3a)
100*(exp(myLm3a$coef[3]) - 1) 
100*(exp(confint(myLm3a,3))-1)  
# Conclusion: Adjusted for body mass, the median energy expenditure for 
# echo-locating bats exceeds that for echo-locating bats by an estimated 
# 8.2% (95% confidence interval: 29.6% LESS to 66.3% MORE) 

# DISPLAY FOR PRESENTATION 
myPlotCode    <- ifelse(Type=="non-echolocating birds",24,21)        
myPointColor  <- ifelse(Type=="echolocating bats","green","white")  
plot(Energy ~ Mass, log="xy", xlab="Body Mass (g); Log Scale ",
  ylab="In-Flight Energy Expenditure (W); Log Scale",
  main="In-Flight Energy Expenditure Study",
  pch=myPlotCode,bg=myPointColor,lwd=2, cex=1.5) 
dummyMass  <- seq(5,800,length=50)
beta       <- myLm3$coef
curve1     <- exp(beta[1] + beta[2]*log(dummyMass))
curve2     <- exp(beta[1] + beta[2]*log(dummyMass) + beta[3])
curve3     <- exp(beta[1] + beta[2]*log(dummyMass) + beta[4])
lines(curve1 ~ dummyMass)
lines(curve2 ~ dummyMass, lty=2)
lines(curve3 ~ dummyMass, lty=3)
legend(100,3,
  c("Echolocating Bats","Non-Echolocating Bats","Non-Echolocating Birds"),
  pch=c(21,21,24),lwd=2,pt.cex=c(1.5,1.5,1.5),pt.lwd=c(2,2,2),
  pt.bg=c("green","white","white"),lty=c(1,2,3))
  
detach(case1002)

}
\keyword{datasets}
