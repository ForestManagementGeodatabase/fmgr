#' @title Load needed packages
#' 
#' @description Loads specified packages. 
#' 
#' @export
#' @param need_pkgs      A character vector of package names.
#' 
#' @return Loads the requested packages.
#' 
load_packages <- function(need_pkgs) {
  # Load all needed packages
  lapply(need_pkgs, require, character.only = TRUE)
}