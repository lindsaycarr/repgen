% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/uvhydrograph-render.R
\name{getMeasQPlotConfig}
\alias{getMeasQPlotConfig}
\title{Get Discharge Measurement Plot Config}
\usage{
getMeasQPlotConfig(meas_Q)
}
\arguments{
\item{meas_Q}{list of discharge measurements}
}
\value{
named list of gsplot calls. The name is the plotting call to make, and it points to a list of config params for that call
}
\description{
Given a list of discharge measurements, will return a named list of gsplot elements to call
}
