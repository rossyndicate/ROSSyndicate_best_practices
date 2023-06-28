# Function to check for package installation, then install (if necessary) and load libraries.
# Adapted from code developed by Caitlin Mothes, PhD.

package_loader <- function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

# fill in with packages that need to be loaded:
packages <- c('tidyverse',
              'sf')

package_loader(packages)