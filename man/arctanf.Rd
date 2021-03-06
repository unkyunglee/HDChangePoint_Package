% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/arctan_nlme.R
\name{arctanf}
\alias{arctanf}
\title{Arctanget model for the parametric nonlinear mixed effects model (nlme) procedure}
\usage{
arctanf(gam1, gam2, gam3, gam4, logage)
}
\arguments{
\item{gam1}{a scale parameter.}

\item{gam2}{a parameter for an inflection point.}

\item{gam3}{a parameter, which determines steepness of the arctangent model.}

\item{gam4}{a vertical shift parameter that can shift the maximum and the minimum of the function values.}

\item{logage}{a vector of time points (log-scaled ages), which is generated around \code{gam2}. It can be an any length of vector.}
}
\value{
a vector of response variables under the deterministic arctangent model, whose length is the same as the length of \code{logage}.
}
\description{
Arctanget model for the parametric nonlinear mixed effects model (nlme) procedure
}
\examples{
library(HDChangePoint)
## Specify parameters
gam1=2.45/pi
gam2=0
gam3=pi/1.1
gam4=0.8

## Specify the time points (log-scaled ages)
logage<-seq(-0.5, 0.5, by=0.1)

## Obtain a vector of response variables when parametric NLME assumes the arctangent model
arctanft<-arctanf(2.45/pi, 0, pi/1.1, 0.8, logage)

## Plot the S-shaped curve under the arctangent model
plot(logage, arctanft, type='l')
}
