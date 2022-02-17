#' @title Compare tool parameters
#' 
#' @description Compares the parameters passed by ESRI to R. The table returned 
#' helps to troubleshoot data types conversion between ESRI and R. 
#' 
#' @param in_params    list; List of parameter values created by an ESRI 
#'                     script tool.
#' @param param_list   list; List of parameter values in R. List items should 
#'                     be named by the names of the parameters. 
#'                     
#' @return A data frame of parameters and their characteristics. 
#' 
compare_params <- function(in_params, param_list) {
  # Set parameter names for in_params
  param_names <- as.list(names(param_list))
  in_params <- setNames(in_params, param_names)
  
  # Get parameters from ESRI and rename fields
  params_esri <- param_table(in_params)
  params_esri <- dplyr::rename(params_esri, esri_type = type)
  
  # Get parameters in R and rename fields
  params_r <- param_table(param_list)
  params_r <- dplyr::rename(params_r, r_type = type)
  
  # Build a table to comapre the two
  param_table <- dplyr::left_join(params_esri, params_r,
                                  by = "param_name")
}