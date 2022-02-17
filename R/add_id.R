#' @title Add ID Field
#' 
#' @param df      data frame; An FMG table to add an ID field to. 
#' @param level   character; The FMG level to create the ID field from. 
#'
add_id <- function(df, level) {
  if(level == "stand") {
    df <- dplyr::mutate(df, Site_ID = SID)
    
  } else if(level == "site") {
    df <- dplyr::mutate(df, Site_ID = SITE)
  }
}