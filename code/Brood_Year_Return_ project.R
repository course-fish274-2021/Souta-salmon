Brood_Year <- read.csv("data/brood_Year_Return.csv_1dataset.csv")

library(dplyr)

Brood_Year_return <- Brood_Year %>%
  mutate(NumberOfReturns = ifelse(NumberOfReturns < 200, "riversystem", "NumberOfReturns"))
