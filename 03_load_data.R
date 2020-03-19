# Write code here to load the data you downloaded in download_data.R

# uci.iris <- readRDS("Data/uci_iris.rds")
# uci.wine <- readRDS("Data/uci_wine.rds")
uci.adult <- readRDS("Data/uci_adult.rds")

# You might choose to do any resampling here to ensure it is consistent across
# models

set.seed(7482) # set seed for reproducibility
library("rsample")
# uci.adult.cv <- rsample::vfold_cv(uci.adult, v = 3, strata = annual_income)
# uci.wine.cv <- rsample::vfold_cv(uci.wine, v = 3, strata = Classes)
# uci.iris.cv <- rsample::vfold_cv(uci.iris, v = 3, strata = Class)

