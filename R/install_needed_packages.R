#' @title Install needed packages
#' 
#' @description Tests if packages are installed and if not installs them.
#' 
#' @export
#' @param need_pkgs      A character vector of package names.
#' 
#' @return Installs the requested packages.
#' 
install_needed_packages <- function(need_pkgs) {
  # Set CRAN repository
  message("Setting CRAN repository...")
  r <- getOption("repos")
  r["CRAN"] <- "https://cran.rstudio.com/"
  options(repos = r)
  
  # Don't compile from source
  #options(install.packages.check.source = "no")
  
  # Update existing packages
  message("Updating packages...")
  update.packages(lib.loc = .libPaths()[1], 
                  ask = FALSE, 
                  checkBuilt = TRUE,
                  type = "win.binary")
  
  # Determine the uninstalled packages from need_pkgs
  uninst_pkgs <- need_pkgs[!(need_pkgs %in% installed.packages()[, "Package"])]
  
  # Install uninstalled packages
  if (length(uninst_pkgs)) {
    message("Installing missing packages...")
    install.packages(uninst_pkgs, 
                     Ncpus = 5,
                     dependencies = TRUE,
                     type = "win.binary")
  }
}