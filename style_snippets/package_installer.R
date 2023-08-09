# Function to check for package installation, then install (if necessary) 
# Adapted from code developed by Caitlin Mothes, PhD. 'package_loader.R'

# This function is specifically designed to be run prior to a {targets} pipeline


# fill in with packages that need to be loaded:
packages <- c('tidyverse',
              'sf')

#' Function to check for and install (but not load) packages. 
#' This is likely to be used for most {targets} pipelines. 
#' 
#' @param x a package name, in quotations
#' @returns text string to indicate whether a package was
#' installed, or if it was already installed.
#' 
#' @seealso [package_loader()]
#' 
#' 
package_installer <- function(x) {
  if (x %in% installed.packages()) {
    print(paste0('{', x ,'} package is already installed.'))
  } else {
    install.packages(x)
    print(paste0('{', x ,'} package has been installed.'))
  }
}

lapply(packages, package_installer)
