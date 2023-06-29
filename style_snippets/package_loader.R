# Function to check for package installation, then install (if necessary) and load libraries.
# Adapted from code developed by Caitlin Mothes, PhD.

# fill in with packages that need to be loaded:
packages <- c('tidyverse',
              'sf')

package_loader <- function(x) {
    if (x %in% installed.packages()) {
      library(x, character.only = TRUE) 
    } else {
      install.packages(x)
      library(x, character.only = TRUE)
    }
}

lapply(packages, package_loader)
