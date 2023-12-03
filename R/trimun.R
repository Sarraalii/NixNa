#' Remove Rows for Unique Values with Missing Covariates
#'
#' The \code{trimun} function removes rows for unique values in a specified column
#' if at least one of the specified covariates is missing.
#'
#' @param df A data frame.
#' @param unique_column A character string specifying the column with unique values.
#' @param covariates A character vector specifying the covariate columns.
#'
#' @return A data frame with rows removed for unique values with missing covariates.
#'
#' @examples
#' \dontrun{
#' # Load the NixNA package
#' library(trimun)
#'
#' # Specify the column and covariates
#' unique_column <- "country_name"
#' covariates <- c("GDP", "popdens", "urban", "male_edu")
#'
#' # Call the function
#' cleaned_data <- trimun(conflictdata, unique_column, covariates)
#' }
#'
#'
#' @keywords data
#' @export
#' @rdname trimun

trimun <- function(df, unique_column, covariates) {
  unique_values <- unique(df[[unique_column]])

  rows_to_remove <- logical(nrow(df))

  for (value in unique_values) {
    rows <- df[[unique_column]] == value
    missing_values <- apply(df[covariates][rows, ], 1, function(row) any(is.na(row)))

    if (any(missing_values)) {
      rows_to_remove <- rows_to_remove | rows
    }
  }

  cleaned_data <- df[!rows_to_remove, ]
  cleaned_data
}






