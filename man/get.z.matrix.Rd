% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.z.matrix.R
\name{get.z.matrix}
\alias{get.z.matrix}
\title{Get z matrix}
\usage{
get.z.matrix(expr, sample.mapping, states.control = NULL,
  states.case = NULL, method = "mean", out.file = NULL)
}
\arguments{
\item{expr}{Expression matrix (genes vs samples), tab separated.}

\item{sample.mapping}{Sample - condition mapping.}

\item{states.control}{Label of control (background) samples. 
If NULL sample.mapping is assumed to include the following types: "case" "control".}

\item{states.case}{Label of case (disease) samples.}

\item{method}{Method to calculate the z score, defaults to mean and sd, use median for med and mad.}

\item{out.file}{Output file for writing z score matrix.}
}
\value{
Data frame containing z-scores
}
\description{
Returns z-score matrix for a given GEO data set.
The z-scores are calculated for each gene in each sample
using the mean and sd over provided control samples.
}
\examples{
gds.data = fetch.expression.data("GDS4966", do.log2=F, probe.conversion="Gene ID")
expr = gds.data$expr
sample.mapping = gds.data$sample.mapping
z = get.z.matrix(expr, sample.mapping, 
	states.control = c("healthy donor"), 
	states.case = c("tuberculosis", "latent tuberculosis infection"))
}

