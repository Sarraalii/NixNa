# Load the required libraries
library(testthat)


test_that("trimcovNa removes rows with missing values in specified covariate column", {
  # Create a sample dataset for testing
  testdata <- data.frame(
    country_name = c("A", "A", "B", "B", "C", "C"),
    GDP = c(100, 90, 200, 33, 300, 350),
    popdens = c(50, NA, 70, 80, 90, 89),
    urban = c(NA, 40, 50, 60, 70, 80),
    male_edu = c(1, 2, 3, 4, 5, 6)
  )

  # Specify the target column and covariates
  target_column <- "country_name"
  covariate_columns <- c("popdens", "urban", "male_edu", "GDP")

  # Call the function
  cleaned_data <- trimcovNa(testdata, target_column, covariate_columns)

  # Check that rows with missing values in specified covariate column are removed
  expect_equal(nrow(cleaned_data), 4)
  expect_true(all(cleaned_data$country_name %in% c("B", "C")))
})
