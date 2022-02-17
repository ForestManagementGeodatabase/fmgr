#' @title Converts FMG unique identifier to the current standard
#' 
#' @description Converts the FMG unique identifier fields to the current 
#' standard from any variant that has been in use over the life of the project.
#' 
#' @param df    data frame; A FMG data frame. 
#' 
#' @details The current requirement for the stand unique id is `Site_ID`. 
#' The current requirement for the plot point unique id is `PLOT`. 
#' 
#' @return A FMG data frame with the currently used unique identifier field 
#' names.
#' 
fix_fmg_id <- function(df) {
  # Rename previous ID fields to `Site_ID`
  if("SITE_NEW" %in% colnames(df)) {
    df <- dplyr::rename(df, Site_ID = SITE_NEW)
  }
  if("SITE_ID" %in% colnames(df)) {
    df <- dplyr::rename(df, Site_ID = SITE_ID)
  }
  if("SITEID" %in% colnames(df)) {
    df <- dplyr::rename(df, Site_ID = SITEID)
  }
  if("SiteID" %in% colnames(df)) {
    df <- dplyr::rename(df, Site_ID = SiteID)
  }
  
  # Rename the previous versions of the `PLOT` field
  if("Plot" %in% colnames(df)) {
    df <- dplyr::rename(df, PLOT = Plot)
  }
  if("PL_NUM" %in% colnames(df)) {
    df <- dplyr::rename(df, PLOT = PL_NUM)
  }
  
  return(df)
}