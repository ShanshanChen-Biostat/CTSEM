% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ctGenerate.R
\name{ctGenerate}
\alias{ctGenerate}
\title{ctGenerate}
\usage{
ctGenerate(
  ctmodelobj,
  n.subjects = 100,
  burnin = 0,
  dtmean = 1,
  logdtsd = 0,
  dtmat = NA,
  wide = FALSE
)
}
\arguments{
\item{ctmodelobj}{ctsem model object from \code{\link{ctModel}}.}

\item{n.subjects}{Number of subjects to output.}

\item{burnin}{Number of initial time points to discard (to simulate stationary data)}

\item{dtmean}{Positive numeric. Average time interval (delta T) to use.}

\item{logdtsd}{Numeric. Standard deviation for variability of the time interval.}

\item{dtmat}{Either NA, or numeric matrix of n.subjects rows and Tpoints-1 columns, 
containing positive numeric values for all time intervals between measurements. 
If not NA, dtmean and logdtsd are ignored.}

\item{wide}{Logical. Output in wide format?}
}
\description{
This function generates data according to the specified ctsem model object.
}
\details{
Covariance related matrices are treated as Cholesky factors. 
TRAITTDPREDCOV and TIPREDCOV matrices are not accounted for, at present. 
The first 1:n.TDpred rows and columns of TDPREDVAR are used for generating
tdpreds at each time point.
}
\examples{
#generate data for 2 process model, each process measured by noisy indicator, 
#stable individual differences in process levels.

generatingModel<-ctModel(Tpoints=8,n.latent=2,n.TDpred=0,n.TIpred=0,n.manifest=2,
 MANIFESTVAR=diag(.1,2),
 LAMBDA=diag(1,2),
 DRIFT=matrix(c(-.2,-.05,-.1,-.1),nrow=2),
 TRAITVAR=matrix(c(.5,.2,0,.8),nrow=2),
 DIFFUSION=matrix(c(1,.2,0,4),2),
 CINT=matrix(c(1,0),nrow=2),
 T0MEANS=matrix(0,ncol=1,nrow=2),
 T0VAR=diag(1,2))

data<-ctGenerate(generatingModel,n.subjects=15,burnin=10)
}
