% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/normalize.R
\name{normalize}
\alias{normalize}
\title{Normalize data}
\usage{
normalize(EEM_uf)
}
\arguments{
\item{EEM_uf}{Unfolded EEM matrix where columns are wavelength condition and rows are samples}
}
\value{
A matrix of normalized data
}
\description{
Normalize data (area under the curve = 1)
}
\details{
The unfolded EEM data can be normalized by dividing each variable by the 
sum of the absolute value of all variables in a sample, such that the summation 
of absolute values of all variables in each sample was equal to 1. This is 
can be used to reduce the scaling difference,which is common in spectroscopic 
applications. This difference is usually caused by the scattering effect, 
source/detector variation and instrumental sensitivity.
}
\examples{
data(applejuice)
applejuice_uf <- unfold(applejuice) # unfold list into matrix
applejuice_uf_norm <- normalize(applejuice_uf) # normalize data

rowSums(abs(applejuice_uf_norm), na.rm = TRUE) # the absolute sum of each row equal to 1

  
}

