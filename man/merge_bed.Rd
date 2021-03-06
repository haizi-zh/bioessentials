% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/manipulation.R
\name{merge_bed}
\alias{merge_bed}
\title{Merge overlapping intervals}
\usage{
merge_bed(x, max_dist = 0, operation = NULL)
}
\arguments{
\item{x}{A \code{data.table} object.}

\item{max_dist}{Maximum distance between features allowed for features to be
merged. Default is 0. That is, overlapping and/or book-ended features are
merged.}

\item{operation}{Specify what operations should be applied to merged
intervals. Default is \code{NULL}, i.e. do not apply any operation and only
return the first three columns (\code{chrom}, \code{start}, \code{end}). Must be a list in
the following format: \code{list(col1 = func1, col2 = func2, ...)}, where \code{col1}
and \code{col2} are column names, and \code{func1} and \code{func2} are univariate
functions applied on the corresponding columns. For example: \code{list(score = sum)} means for all intervals merged into one group, take the sum of the
\code{score} column. Similar to \verb{bedtools merge}'s \code{-c} and \code{-o} arguments.}
}
\value{
A \code{data.table} object containing merged intervals.
}
\description{
This operation is similar to \verb{bedtools merge}.
}
\examples{
merge_bed(x, operation = list(score = mean))
}
\seealso{
https://bedtools.readthedocs.io/en/latest/content/tools/merge.html
}
