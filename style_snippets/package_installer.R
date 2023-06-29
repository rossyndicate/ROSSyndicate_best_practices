# Function to check for package installation, then install (if necessary) 
# Adapted from code developed by Caitlin Mothes, PhD. 'package_loader.R'

# This function is specifically designed to be run prior to a {targets} pipeline


# fill in with packages that need to be loaded:
packages <- c('tidyverse',
              'sf')

package_installer <- function(x) {
  if (x %in% installed.packages()) {
    print(paste0('{', x ,'} package is already installed.'))
  } else {
    install.packages(x)
    print(paste0('{', x ,'} package has been installed.'))
  }
}

lapply(packages, package_installer)
