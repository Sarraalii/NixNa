# NixNa

## Overview

NixNa is an R package designed to efficiently handle missing data, providing two essential functions: `trimcovNa()` and `trimun()`. These functions focus on removing rows with missing values in specified covariate columns and handling unique values with missing covariates, respectively.

install.packages("devtools")
library(dev tools)
devtools::install_github("sarraalii/NixNa")
library(Nixna)

### 1. `trimcovNa()`

This function removes rows with missing values in a specified covariate column, allowing you to clean your dataset by eliminating observations lacking essential information in a specific variable.

#### Usage Example:

```R
data(conflictdata)
target_column <- "country_name"
covariate_columns <- c("GDP", "pops", "urban", "male_edu")
cleaned_data <- trimcovNa(conflictdata, target_column, covariate_columns)
```

### 2. `trimun()`

The `trimun()` function removes rows associated with unique values that have missing covariates. This is particularly useful when working with datasets where unique values must be retained but are incomplete in certain covariate columns.

#### Usage Example:

```R
data(conflictdata)
unique_column <- "country_name"
covariates <- c("GDP", "pops", "urban", "male_edu")
cleaned_data <- trimun(conflict data, unique_column, covariates)
```

## Installation

You can install NixNa using the `devtools` package:

```R
devtools::install_github("your_username/nixna")
```


## Contributing

We welcome contributions to enhance the functionality and usability of NixNa. If you have suggestions or encounter issues, please feel free to open an [issue](https://github.com/your_username/nixna/issues) or submit a [pull request](https://github.com/your_username/nixna/pulls).

## License

This project is licensed under the [MIT License](LICENSE.md) - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

We appreciate the open-source community for their contributions and support in making NixNa a valuable tool for handling missing data.

Happy coding with NixNa!
