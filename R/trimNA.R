#' Remove rows with missing values in a specified column
#'
#' This function removes rows from a data frame where a specified column
#' has a missing value in another specified column.
#'
#' @param data A data frame.
#' @param target_col The column name where rows will be removed if condition_col has NA
#' @param condition_col The column name with missing values to check
#' @return A data frame with rows removed.
#' @export
trimNa <- function(data, target_col, condition_col) {
  data <- data[complete.cases(data[, c(target_col, condition_col)]), ]
  return(data)
}
