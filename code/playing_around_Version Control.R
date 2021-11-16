install.packages("ggplot")
library("ggplot2")

Gaeta_etal_CLC_data <- read.csv("data/Gaeta_etal_CLC_data.csv")

ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat)) +
  geom_histogram()
