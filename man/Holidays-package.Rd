\name{Holidays-package}
\alias{Holidays-package}
\alias{Holidays}
\docType{package}
\title{
  Supplies holiday data to the TimeWarp package.
}
\description{

  This package is a data-only package that registers holidays with the
  TimeWarp package.  The package has no visible functions or data; it
  works by calling \code{\link[TimeWarp]{registerHolidays}()} from its
  \code{.onLoad()} function.

}
\author{
Jeffrey Horner, Lars Hansen, Tony Plate

Maintainer: Tony Plate \email{tplate@acm.org}
}
\note{
  To create a package with custom holidays (or updated holidays for the
  holiday series defined in here), either modify the source code of this
  package, or copy commands from R/holidays.R into a new package.
  }
\keyword{ package }
\seealso{
From the TimeWarp package: \code{\link[TimeWarp]{holidays}},
\code{\link[TimeWarp]{registerHolidays}}, \code{\link[TimeWarp]{allHolidays}}.
}
\examples{
# View counts of registered holidays by year
sapply(as.character(1998:2012), function(y)
       sapply(allHolidays(), function(h) length(holidays(y, h, silent=TRUE))))
}
