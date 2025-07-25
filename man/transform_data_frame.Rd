% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transform_data_frame.R
\name{transform_data_frame}
\alias{transform_data_frame}
\title{Transform log mean and standard error to normal space}
\usage{
transform_data_frame(data)
}
\arguments{
\item{data}{A data frame returned from \code{\link[=get_fishlife_traits]{get_fishlife_traits()}} with the
following columns: \code{name}, \code{trait}, \code{mean}, and \code{se}. The \code{mean} and
\code{se} columns should be in log space.}
}
\value{
The original data frame is returned with two additional columns,
\code{mean_normal} and \code{sd_normal}.
}
\description{
Transform log mean and standard error to normal space
}
