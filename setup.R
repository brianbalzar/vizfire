# setup_vizfire_package.R

# Load necessary libraries
library(usethis)
library(devtools)
library(here)

# Ensure the current working directory is the package root
setwd(here::here())

# Create a README file
use_readme_md()

# Create a .Rbuildignore file and add common files to ignore
use_build_ignore(c("README.md", "vizfire.Rproj", "tests", ".gitignore"))

# Initialize testing infrastructure
use_testthat()

# Create some initial test files if not already present
use_test("theme_stylish")
use_test("plotly_stylish")

# Create a vignette for package documentation if needed
use_vignette("Introduction_to_vizfire")

# Add a GitHub action for continuous integration
use_github_action_check_standard()

# Optional: Create a license file
use_mit_license("Your Name")

# Add a .gitignore file to ignore common files
use_git_ignore(c(".Rhistory", ".RData", ".Rproj.user"))

# If you want to include any data within your package
# usethis::use_data_raw(name = "my_dataset")

# Add roxygen2 to suggest dependencies in DESCRIPTION
use_package("roxygen2", type = "Suggests")
