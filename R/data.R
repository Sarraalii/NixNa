#' Data to demonstrate the trimNa and trimcovNa function
#' Description:
#'   Data for 181 countries from the Uppsala Conflict Data Program and World Bank for the years 2000 to 2019.
#'   The dataset includes various socio-economic indicators.

#' @format
#'   A data frame with 3721 rows and 20 columns
#'   Variables:country_name: Country Name, ISO: ISO Country Code, region: Region, Year: Year, GDP: Gross Domestic Product, OECD: Organization for Economic Co-operation and Development Membership, OECD2023: OECD Membership Status in 2023, popdens: Population Density, urban: Urban Population, agedep: Age Dependency Ratio, male_edu: Male Education, temp: Temperature, totdeath: Total Deaths, armconf1: Armed Conflict Level 1, drought: Drought Occurrence, earthquake: Earthquake Occurrence, MatMort: Maternal Mortality, InfantMort: Infant Mortality, NeoMort: Neonatal Mortality, Under5Mort: Under-5 Mortality`
#' @source: The data is sourced from the Uppsala Conflict Data Program and the World Bank (https://pubmed.ncbi.nlm.nih.gov/34582455/).


#' @examples
#'   Load the data
#'   data("conflictdata")
#'   str(conflictdata)

#'  Test the trimNa function to remove countries with missing MatMort values
#'   finaldata1 <- trimna(conflictdata, target_col = "country_name", condition_col = "MatMort")
#' This will remove rows from country_name column conditional on MatMort missing data


#' Test the trimcovNa by first defining the target column and covariate columns
#' target_column <- "country_name"
#' covariate_columns <- c("GDP", "male_edu", "temp")

#' Use the redefined function to clean the covariates dataset
#' cleaned_covariates <- trimcovNa(conflictdata, target_col = target_column, covariate_cols = covariate_columns)
#' This will remove rows from country_name if any of the covariates have a missing value
#' @example   Specify the column and covariates
#'unique_column <- "country_name"
#' covariates <- c("GDP", "popdens", "urban", "male_edu")

# Call the function
#' cleaned_data <- trimun(conflictdata, unique_column, covariates)

# Print the cleaned data
#' print(cleaned_data)
#'

#' End of Data Documentation
"conflictdata"
