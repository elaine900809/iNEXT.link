% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MainFun.R
\name{ggiNEXTbeta.link}
\alias{ggiNEXTbeta.link}
\title{ggplot2 extension for output from \code{iNEXTbeta.link}}
\usage{
ggiNEXTbeta.link(output, type = c("B", "D"))
}
\arguments{
\item{output}{the output from \code{"iNEXTbeta.link"}}

\item{type}{selection of plot type : \code{type = 'B'} for plotting the gamma, alpha, and beta diversity ;
\code{type = 'D'} for plotting 4 turnover dissimilarities.}
}
\value{
a figure for gamma, alpha, and beta diversity or four dissimilarity measures.
}
\description{
\code{ggiNEXTbeta.link}: ggplot for Interpolation and extrapolation of beta diversity with order q
}
\examples{
## Taxonomic network diversity for interaction data
# Plot coverage-based standardized alpha/beta/gamma/dissimilarity network diversity estimates and 
# related statistics
data(beetles_plotA)
output_beta_qiTD = iNEXTbeta.link(data = beetles_plotA, diversity = 'TD', level = NULL, q = c(0, 1, 2))
ggiNEXTbeta.link(output_beta_qiTD, type = 'B')
ggiNEXTbeta.link(output_beta_qiTD, type = 'D')

## Phylogenetic network diversity for interaction data
# Plot coverage-based standardized alpha/beta/gamma/dissimilarity network diversity estimates and 
# related statistics
data(beetles_plotA)
data(beetles_row_tree)
output_beta_qiPD = iNEXTbeta.link(data = beetles_plotA, diversity = 'PD', level = NULL, q = c(0, 1, 2),
                                  row.tree = beetles_row_tree, nboot = 10)
ggiNEXTbeta.link(output_beta_qiPD, type = 'B')
ggiNEXTbeta.link(output_beta_qiPD, type = 'D')


## Functional network diversity for interaction data
# Plot coverage-based standardized alpha/beta/gamma/dissimilarity network diversity estimates and 
# related statistics
data(beetles_plotA)
data(beetles_row_distM)
output_beta_qiFD = iNEXTbeta.link(data = beetles_plotA, diversity = 'FD', level = NULL, q = c(0, 1, 2), 
                                  row.distM = beetles_row_distM, FDtype = "AUC", nboot = 10)
ggiNEXTbeta.link(output_beta_qiFD, type = 'B')
ggiNEXTbeta.link(output_beta_qiFD, type = 'D')


}
