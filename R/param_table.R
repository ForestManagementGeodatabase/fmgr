#' @title Parameters information table
#' 
#' @description Calculates a table of parameter characteristics for a set of 
#' parameters. 
#' 
#' @param param_list   list; A list of named parameter values.
#' 
#' @return A data frame of parameters and their characteristics. 
#' 
param_table <- function(param_list) {
  # Get a list of parameter names
  param_names <- as.list(names(param_list))
  
  # Get info on each parameter
  param_info_table <- purrr::map2(.x = param_list, .f = param_info, 
                                  .y = param_names)
  
  # Combine all parameters into a single data frame
  info_table <- dplyr::bind_rows(param_info_table)
}