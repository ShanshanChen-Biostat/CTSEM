% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stanWplot.R
\name{stanWplot}
\alias{stanWplot}
\title{Runs stan, and plots sampling information while sampling.}
\usage{
stanWplot(object, iter = 2000, chains = 4, ...)
}
\arguments{
\item{object}{stan model object}

\item{iter}{Number of iterations}

\item{chains}{Number of chains}

\item{...}{All the other regular arguments to stan()}
}
\description{
Runs stan, and plots sampling information while sampling.
}
\details{
On windows, requires Rtools installed and able to be found by pkgbuild::rtools_path()
}
\examples{
library(rstan)
#### example 1 
scode <- "
parameters {
  real y[2]; 
} 
model {
  y[1] ~ normal(0, .5);
  y[2] ~ double_exponential(0, 2);
} 
"
#Uncomment the following lines -- launches rscript not compatible with cran check.
#sm <- stan_model(model_code = scode)
#fit1 <- stanWplot(object = sm,iter = 100000,chains=2,cores=1)
}
