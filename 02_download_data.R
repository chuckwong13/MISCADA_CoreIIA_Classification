# Write code here to download the data you are using for your report.
# DO NOT push the data to your Github repository.

# For example, to download the simple Iris data from the UCI Machine Learning
# Repository

# uci.wine <- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data",header = FALSE)
# uci.adult <- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data", header = FALSE, na.strings = "?")
uci.adult <- read.table(url("https://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data"),
                       sep = ",",
                       header = FALSE,
                       na.strings = " ?")

library("dplyr")
library("forcats")

# Apply the names as defined on the website https://archive.ics.uci.edu/ml/datasets/Wine
# and update the class labels to be shorter


uci.adult <- uci.adult %>%
    transmute(age = V1,
              workclass = V2,
              fnlwgt =V3,
              education = V4,
              education_num = V5,
              marital_status = V6,
              occupation = V7,
              relationship = V8,
              race = V9,
              sex = V10,
              capital_gain = V11,
              capital_loss = V12,
              hours_per_week = V13,
              native_country = V14,
              annual_income = V15)



# Save into Data directory which is not pushed to Github
# saveRDS(uci.wine, "Data/uci_wine.rds")
saveRDS(uci.adult, "Data/uci_adult.rds")
