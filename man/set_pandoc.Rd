% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/set_pandoc_path.R
\name{set_pandoc}
\alias{set_pandoc}
\title{Set pandoc path}
\usage{
set_pandoc()
}
\description{
Determine if \code{pandoc} is installed and set the path.
}
\details{
This function is needed to be able to use pandoc outside of an 
    RStudio session. It detects the pandoc installation path and sets the 
    R environment variable \code{RSTUDIO_PANDOC} to the installation path.
}
