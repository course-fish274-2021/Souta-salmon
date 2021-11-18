fish_data <-read.csv("data/Gaeta_etal_CLC_data.csv")

library(dplyr)

#adding column to denote fish is big and small using 300

fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

#exercise 2


