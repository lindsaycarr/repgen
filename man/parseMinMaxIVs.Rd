% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils-parse.r
\name{parseMinMaxIVs}
\alias{parseMinMaxIVs}
\title{Parse Min and Max IVs}
\usage{
parseMinMaxIVs(reportObject, timezone, type, invertedFlag, excludeMinMaxFlag,
  excludeZeroNegativeFlag)
}
\arguments{
\item{reportObject}{the full report JSON object}

\item{timezone}{the time zone to parse points into}

\item{type}{the type of TS that these points belong to}

\item{invertedFlag}{whether or not the axis for the TS is inverted}

\item{excludeMinMaxFlag}{wheter or not min / max IVs should be plotted or labeled}

\item{excludeZeroNegativeFlag}{whether or not zero/negative values are included}
}
\value{
a list containing the min and max IV values named as 'max_iv' and 'min_iv'
as well as a boolean 'canLog' that represents whether or not the IVs allow for a
logged Y-Axis.
}
\description{
Given the full report JSON object, reads the
min and max IVs and formats them properly for plotting
}
