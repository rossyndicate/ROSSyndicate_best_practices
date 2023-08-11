# Function to check for package installation, then install (if necessary) and load libraries.
# Adapted from code developed by Caitlin Mothes, PhD.

# See related 'package_installer' for {targets} pipelines

# fill in with packages that need to be loaded:
packages <- c('tidyverse',
              'sf')

#' Function to check for, install, and load packages. 
#' This will likely be used at the top of most of your
#' scripts.
#' 
#' @param x a package name, in quotations
#' @returns silently loads packages from a list
#' 
#' @seealso [package_installer()]
#' 
#' 
package_loader <- function(x) {
    if (x %in% installed.packages()) {
      library(x, character.only = TRUE) 
    } else {
      install.packages(x)
      library(x, character.only = TRUE)
    }
}

lapply(packages, package_loader)
