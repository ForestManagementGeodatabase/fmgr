#' @title Convert missing data to NA
#' 
#' @description Convert the commonly experienced forms of missing data to NA 
#' for all fields in a data frame.
#' 
#' @param df     data frame; A data frame.
#' 
#' @return The data frame with the covered instances of missing data converted 
#' to R NA. 
#' 
set_na <- function(df) {
  df <- dplyr::mutate_all(df, list(~na_if(.,"")))
  df <- dplyr::mutate_all(df, list(~na_if(.," ")))
  df <- dplyr::mutate_all(df, list(~na_if(.,"NULL")))
  df <- dplyr::mutate_all(df, list(~na_if(.,"Null")))
  df <- dplyr::mutate_all(df, list(~na_if(.,"null")))
  df <- dplyr::mutate_all(df, list(~na_if(.,"<NULL>")))
  df <- dplyr::mutate_all(df, list(~na_if(.,"<Null>")))
  df <- dplyr::mutate_all(df, list(~na_if(.,"<null>")))
}