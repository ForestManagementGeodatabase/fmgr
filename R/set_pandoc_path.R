#' @title Set pandoc path
#' 
#' @export
#' 
#' @description Determine if \code{pandoc} is installed and set the path.
#' 
#' @details This function is needed to be able to use pandoc outside of an 
#'     RStudio session. It detects the pandoc installation path and sets the 
#'     R environment variable \code{RSTUDIO_PANDOC} to the installation path. 
#' 
set_pandoc <- function() {
  if (!Sys.which("pandoc") == "") {
    # Check if pandoc is on the path
    # Set R environment variable
    Sys.setenv(RSTUDIO_PANDOC = dirname(Sys.which("pandoc")))
    message("Using pandoc: ", dirname(Sys.which("pandoc")))
  } else if (file.exists("C:\\Program Files\\RStudio\\bin\\pandoc\\pandoc.exe")) {
    # Check if pandoc is installed by RStudio
    # Set R environment variable
    Sys.setenv(RSTUDIO_PANDOC = "C:/Program Files/RStudio/bin/pandoc")
    message("Using pandoc: C:/Program Files/RStudio/bin/pandoc" )
  } else {
    message("pandoc installation not detected.")
  }
  
  # Determine if pandoc is available
  message(paste("Pandoc available: ", rmarkdown::pandoc_available()))
  
}