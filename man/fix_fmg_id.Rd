% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fix_fmg_id.R
\name{fix_fmg_id}
\alias{fix_fmg_id}
\title{Converts FMG unique identifier to the current standard}
\usage{
fix_fmg_id(df)
}
\arguments{
\item{df}{data frame; A FMG data frame.}
}
\value{
A FMG data frame with the currently used unique identifier field 
names.
}
\description{
Converts the FMG unique identifier fields to the current 
standard from any variant that has been in use over the life of the project.
}
\details{
The current requirement for the stand unique id is `Site_ID`. 
The current requirement for the plot point unique id is `PLOT`.
}
