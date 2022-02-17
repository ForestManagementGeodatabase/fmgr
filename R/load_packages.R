#' @title Load needed packages
#' 
#' @description Loads specified packages. 
#' 
#' @export
#' @param need_pkgs      A character vector of package names.
#' 
#' @return Loads the requested packages.
#' 
#' @examples 
#' need_pkgs <- c("testthat", "fmgr")
#' 
load_packages <- function(need_pkgs) {
  # Check inputs
  if(!is.vector(need_pkgs, mode = "character")) {
    stop("need_pkgs must be a character vector of package names")}
  if(length(need_pkgs) < 1) {
    stop("need_pkgs must contain at least one package")}
  
  # Load all needed packages
  lapply(need_pkgs, require, character.only = TRUE)
}