% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zip_lookups.r
\name{search_county}
\alias{search_county}
\title{Search ZIP codes for a county}
\usage{
search_county(county_name, state_abb, ...)
}
\arguments{
\item{county_name}{Name of a county within a U.S. state}

\item{state_abb}{Two-digit code for a U.S. state}

\item{...}{if the parameter similar = TRUE, then send the parameter max.distance to the base function agrep. Default is 0.1.}
}
\value{
tibble of all ZIP codes for given county name
}
\description{
Search ZIP codes for a county
}
\examples{
middlesex <- search_county("Middlesex", "NJ")
alameda <- search_county("alameda", "CA")
search_county("ST BERNARD", "LA", similar = TRUE)$zipcode
}
