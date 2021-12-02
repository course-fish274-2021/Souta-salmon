# Souta-salmon
---
title: "Souta- Salmon"
author: "Souta Saechao"
date: "12/1/2021"
output: html_document
---

## Concepts

Does managing fisheries for wildlife limit salmon consumption by bears in small Alaskan streams?

In this document I will:

1. Load data from the [Managing salmon for wildlife do fisheries limit salmon consumption by bears in small Alaskan streams dataset](https://figshare.com/articles/dataset/Managing_salmon_for_wildlife_do_fisheries_limit_salmon_consumption_by_bears_in_small_Alaskan_streams_/10315925)
2. Process it into population time series
3. And make initial visualizations

```{r, message=FALSE}
library(dplyr)
library(ggplot2)
```
