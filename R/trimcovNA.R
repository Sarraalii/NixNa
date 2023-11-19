#' Remove rows with missing values in specified covariate column
#'
#' This function removes rows from a column in the data frame where a specified
#' covariate column has a missing value.
#'
#' @param data A data frame.
#' @param target_col Column name where rows should be removed if there's a missing value on another specified column (covariate_cols)
#' @param covariate_cols  Specified column names considered as covariates, if NA exists, remove that row.
#' @return A data frame with rows removed.
#' @export
trimcovNa <- function(data, target_col, covariate_cols) {
  data <- data[complete.cases(data[, c(target_col, covariate_cols)]), ]
  return(data)
}
