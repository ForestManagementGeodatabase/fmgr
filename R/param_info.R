#' @title Parameter information
#' 
#' @description Calculates the characteristics of a parameter. 
#' 
#' @export
#' @param param        character; The parameter.
#' @param param_name   character; The name of the parameter. 
#' 
#' @return A single-row data frame containing the characteristics of a parameter.
#' 
param_info <- function(param, param_name) {
  # Calculate param info fields
  type <- typeof(param)
  
  # Convert into a data frame
  param_row <- tibble(param_name, type)
}