% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simu_results_nonparametric.R
\name{simus.results}
\alias{simus.results}
\title{Summary results of the multi-stage nonparametric procedure}
\usage{
simus.results(
  nsim = 500,
  n = 80,
  res = combi.res,
  model = "logist",
  num.interp = 45,
  newl = 45,
  time.length = 20,
  bb.true = 0.1,
  b0.true = 0.5,
  true.sigma.u = 0.05,
  true.sigma.eps = 0.05,
  file = "logist"
)
}
\arguments{
\item{nsim}{number of simulation runs.}

\item{n}{number of sample size.}

\item{res}{a nsim-length of list from the simulated results.}

\item{model}{a character string for a nonlinear model: \code{"logist"} or \code{"arctan"}.}

\item{num.interp}{number of pseudo-data generated in the estimation procedure.}

\item{newl}{length of time points (log transformed ages) at which predictors are required for each individual longitudinal trajectory.}

\item{time.length}{length of time points for each individual longitudinal trajectory graph to be plotted, should be less than \code{newl}.}

\item{bb.true}{a parameter for the (p-1)-length of true coefficient vector corresponding to subject specific covariates.}

\item{b0.true}{a parameter for the true intercept of the log-normal model for the inflection point.}

\item{true.sigma.u}{a true scale parameter for the random error term in the inflection point model.}

\item{true.sigma.eps}{a true scale parameter for the within-subject error term in the longitudinal model.}

\item{file}{a character string of file name to generate plots with .eps file extention.}
}
\value{
A list of the summarized simulation results from the multi-stage nonparametric procedure
\itemize{
       \item{res.table}{a data frame of the absolute biases, estimated standard deviations, average of the estimated standard errors and 95\% coverage probabilities for the fixed effects (\code{bb.true}, \code{bb0.true}).}
       \item{relative.avr.est.Z}{a data frame of the relative average performance of inflection points for all subjects including the relative absolute biases, the relative empirical standard errors, the relative bootstrap standard deviations and 95\% bootstrap confidence intervals.}
}
}
\description{
Summary results of the multi-stage nonparametric procedure
}
\examples{
library(HDChangePoint)

# How to Generate Simulated Data using mydata() #
n=80; model="logist"; p=2; bb0=0.5;bb=0.1; x.sd=0.3; v1=8; v2=10;
dist="normal"; eps.sd=0.05;u.sd=0.05;

## Specify parameters for the multi-stage nonparametric procedure
num.interp=45;newl=45; k1=20; k2=20; tolerance=0.009; iter=0; time.length=20;

set.seed(22)
## Data generation under the logistic model
outdat<-mydata(n=n, model=model, p=p, bb0=bb0, bb=bb, x.sd=x.sd,
dist=dist,v1=v1, v2=v2, eps.sd=eps.sd, u.sd=u.sd) #

## Multi-stage nonparametric estimation
results<-sim.nonpara(n=n, model=model, dist=dist, k1=k1, k2=k2, num.interp=num.interp,
newl=newl, eps.sd=eps.sd, mean.diff=1, tolerance=tolerance,  itermax=50, iter=iter,
time.length=time.length, dat=outdat)

}
