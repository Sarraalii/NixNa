# Load the required libraries
library(testthat)


test_that("trimun removes rows with missing covariates for unique values", {
  # Create a sample dataset for testing
  testdata <- data.frame(
    country_name = c("A", "A", "B", "B", "C", "C"),
    GDP = c(100, 150, 200, 250, 300, NA),
    popdens = c(50, 60, 70, 80, 90, 100),
    urban = c(30, 40, 50, 60, 70, 80),
    male_edu = c(1, 2, 3, 4, 5, NA)
  )

  # Specify the column and covariates
  unique_column <- "country_name"
  covariates <- c("GDP", "popdens", "urban", "male_edu")

  # Call the function
  cleaned_data <- trimun(testdata, unique_column, covariates)

  # Check that rows with missing covariates for unique values are removed
  expect_equal(nrow(cleaned_data), 4)
  expect_true(all(cleaned_data$country_name %in% c("A", "B")))
})

