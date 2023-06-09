% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stanoptimis.R
\name{stan_reinitsf}
\alias{stan_reinitsf}
\title{Quickly initialise stanfit object from model and data}
\usage{
stan_reinitsf(model, data, fast = FALSE)
}
\arguments{
\item{model}{stanmodel}

\item{data}{standata}

\item{fast}{Use cut down form for speed}
}
\value{
stanfit object
}
\description{
Quickly initialise stanfit object from model and data
}
\examples{
sf <- stan_reinitsf(ctstantestfit$stanmodel,ctstantestfit$standata)
}
