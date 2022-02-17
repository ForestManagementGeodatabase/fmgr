#' @title Install needed packages
#' 
#' @description Tests if packages are installed and if not installs them.
#' 
#' @export
#' @param need_pkgs      A character vector of package names.
#' @param source         character; Indicating if the packages should be 
#'                       compiled from source ("yes", "no"). 
#' 
#' @return Installs the requested packages.
#' 
install_needed_packages <- function(need_pkgs, source = "no") {
  # Check inputs
  if(!is.vector(need_pkgs, mode = "character")) {
    stop("need_pkgs must be a character vector of package names")}
  if(length(need_pkgs) < 1) {
    stop("need_pkgs must contain at least one package")}
  if(!(source %in% c("yes", "no"))) {
    stop("source must be either 'yes' or 'no'")}
  if(!(length(source) == 1)) {
    stop("source must be character with a single value")}
  
  # Set CRAN repository
  message("Setting CRAN repository...")
  r <- getOption("repos")
  r["CRAN"] <- "https://cran.rstudio.com/"
  options(repos = r)
  
  # Set if package will be compiled from source
  options(install.packages.check.source = source)
  
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