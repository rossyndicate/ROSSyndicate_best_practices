# this script sets up a python virtual environment for use in this workflow

try(install_miniconda())

# list python modules
py_modules = c('earthengine-api', 'pandas', 'fiona', 'pyreadr')

py_install(envname = 'env/', 
           packages = py_modules, 
           python_version = 3.8)

#create a conda environment named 'env' with the packages you need
conda_create(envname = file.path(getwd(), 'env'),
             python_version = 3.8,
             packages = py_modules)

Sys.setenv(RETICULATE_PYTHON = file.path(getwd(), 'env/bin/python/'))

use_condaenv(file.path(getwd(), "env/"))
