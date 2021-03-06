\name{dandelion.plot}
\alias{dandelion.plot}
\title{
 dandelion.plots
}
\description{
 Plot variants and somatic mutations
}
\usage{
dandelion.plot(SNP.gr, features=NULL, ranges=NULL,
                      type=c("fan", "circle", "pie", "pin"),
                      newpage=TRUE, ylab=TRUE, 
                      xaxis=TRUE, legend=NULL, 
                      cex=1, maxgaps=1/50, ...)
}

\arguments{
  \item{SNP.gr}{
    A object of \link[GenomicRanges]{GRanges} or \link[GenomicRanges]{GRangesList}.
    All the width of GRanges must be 1.
}
  \item{features}{
    A object of \link[GenomicRanges]{GRanges} or \link[GenomicRanges]{GRangesList}.
}
  \item{ranges}{
    A object of \link[GenomicRanges]{GRanges} or \link[GenomicRanges]{GRangesList}.
}
  \item{type}{
    Character. Could be fan, circle, pie or pin.
}
  \item{newpage}{
  plot in the new page or not.
}
  \item{ylab}{
  plot ylab or not. If it is a character vector, the vector will be used as ylab.
}
  \item{xaxis}{
  plot xaxis or not. If it is a numeric vector with length greater than 1, 
  the vector will be used as the 
  points at which tick-marks are to be drawn. And the names of the vector will be
  used to as labels to be placed at the tick points if it has names. 
}
  \item{legend}{
  If it is a list with named color vectors, a legend will be added.
}
  \item{cex}{
  cex will control the size of circle.
}
  \item{maxgaps}{
  maxgaps between the stem of dandelions. It is calculated by the width of plot
  region devided by maxgaps.
}
  \item{...}{
  not used.
}
}
\details{
    In SNP.gr and features, metadata of the GRanges object will be used to control the 
    color, fill, border, height, data source of pie if the type is pie.
}
\value{
NULL
}
\author{
Jianhong Ou
}
\examples{
    SNP <- c(10, 100, 105, 108, 400, 410, 420, 600, 700, 805, 840, 1400, 1402)
    SNP.gr <- GRanges("chr1", IRanges(SNP, width=1, names=paste0("snp", SNP)), 
                 score=sample.int(100, length(SNP))/100)
    features <- GRanges("chr1", IRanges(c(1, 501, 1001), 
                                        width=c(120, 500, 405),
                                        names=paste0("block", 1:3)),
                        color="black",
                        fill=c("#FF8833", "#51C6E6", "#DFA32D"),
                        height=c(0.1, 0.05, 0.08))
    dandelion.plot(SNP.gr, features, type="fan")
}
\keyword{ misc }