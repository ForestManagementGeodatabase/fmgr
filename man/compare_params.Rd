% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compare_params.R
\name{compare_params}
\alias{compare_params}
\title{Compare tool parameters}
\usage{
compare_params(in_params, param_list)
}
\arguments{
\item{in_params}{list; List of parameter values created by an ESRI 
script tool.}

\item{param_list}{list; List of parameter values in R. List items should 
be named by the names of the parameters.}
}
\value{
A data frame of parameters and their characteristics.
}
\description{
Compares the parameters passed by ESRI to R. The table returned 
helps to troubleshoot data types conversion between ESRI and R.
}
