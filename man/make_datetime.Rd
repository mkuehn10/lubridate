% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/instants.r
\name{make_datetime}
\alias{make_datetime}
\title{Efficient creation of date-times from numeric representations.}
\usage{
make_datetime(year = 1970, month = 1L, day = 1L, hour = 0, min = 0,
  sec = 0, tz = "UTC")
}
\arguments{
\item{year}{numeric year}

\item{month}{numeric month}

\item{day}{numeric day}

\item{hour}{numeric hour}

\item{min}{numeric minute}

\item{sec}{numeric second}

\item{tz}{time zone. Defaults to UTC.}
}
\description{
\code{make_datetime} is a very fast drop-in replacement for
\code{base::ISOdate} and \code{base::ISOdatetime}.
}
\details{
Input vectors are silently recycled. All inputs except \code{sec} are
silently converted to integer vectors. Seconds \code{sec} can be either
integer or double.
}
\examples{
make_datetime(year = 1999, month = 12, day = 22, sec = 10)
## "1999-12-22 00:00:10 UTC"
make_datetime(year = 1999, month = 12, day = 22, sec = c(10, 11))
## "1999-12-22 00:00:10 UTC" "1999-12-22 00:00:11 UTC"
}

