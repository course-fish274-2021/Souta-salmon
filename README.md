
title: "Souta- Salmon"
author: "Souta Saechao"
date: "12/1/2021"
output: html_document


## Concepts

Does managing fisheries for wildlife limit salmon consumption by bears in Alaska?

In this document I will:

1. Load data from the [Managing salmon for wildlife do fisheries limit salmon consumption by bears in small Alaskan streams dataset](https://figshare.com/articles/dataset/Managing_salmon_for_wildlife_do_fisheries_limit_salmon_consumption_by_bears_in_small_Alaskan_streams_/10315925)
2. Process it into population add image 
3. And make initial visualizations


```{r, cache=FALSE}
library(dplyr)
library(ggplot2)
```

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```
## Alaskan Bear

![image](https://d3i6fh83elv35t.cloudfront.net/static/2018/11/fat-bears_GettyImages-966223700-1024x683.jpg)

## import Data

```{r cache=TRUE}
data <- read.csv("Managing_salmon_for_wildlife_Data.csv")
data
```


## adding image screen shot

![image](https://www.alaskatourjobs.com/wp-content/uploads/2017/06/Copper_River_Salmon_Facts.jpg)


![image](https://d3i6fh83elv35t.cloudfront.net/static/2018/11/fat-bears_GettyImages-966223700-1024x683.jpg)

```{r}
summary(data)
```

## Including Plots

```{r}
ggplot(data, aes(x=Year, y=Biomass.Consumed..kg., group = Year)) +
  geom_boxplot()
```
```{r}
ggplot(data, aes(x=Year, y=Biomass.Available..kg., group = Year)) +
  geom_boxplot()
```
```{r}
ggplot(data, aes(x=Year, y=Average.Percentage.Eaten, color = Site)) +
  geom_point()
```
```{r}
ggplot(data, aes(x=Year, y=Biomass.Consumed..kg., color = Site)) +
  geom_point()
```

## Citation 

Lincoln, A., Hilborn, R., Wirsing, A. J., & Quinn, T. P.. (2019). Managing salmon for wildlife: do fisheries limit salmon consumption by bears in small Alaskan streams? (Version 1). figshare. https://doi.org/10.6084/m9.figshare.10315925.v1 ([])

