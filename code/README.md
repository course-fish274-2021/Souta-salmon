---
title: "Managing Salmon for Wildlife "
author: "Souta Saechao"
date: "12/6/2021"
output: ioslides_presentation
---

```{r, cache=FALSE , include=FALSE}
library(dplyr)
library(ggplot2)
```


```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Context
-Why Manage Salmon for wildlife?
They are a Keystone species and they provide much needed Biomass for Bears.

-Whats the problem? 
Humans impact Bear habitat.(waterways, wetlands)

-Why important 
Manage Salmon for wildlife help maintain natures food web. Which is a network of complex interactions formed by the feeding relationships in various organisms in an ecosystem.

-Natural exchange
In nature, Bear's avoid human contact. Low biomass levels unavailable bears are 
a force to scavenge near humans’ territory when food sources become scarce.


## Alaskan Bear
![image Gettyimage](https://d3i6fh83elv35t.cloudfront.net/static/2018/11/fat-bears_GettyImages-966223700-1024x683.jpg)

## Concept 

- Does managing fisheries for wildlife limit salmon consumption by bears in Alaska?

- Comparing Graph process it into population

- Include visual images 

- Findings

## Library package 
- dplyr
- ggplot2


## knitr opts
 knitr

## Data Varibles

 Site (A creek, C Creek, Hansen Creek, Pedro Ponds, Alaska)

 Year(1997-2018)

 Biomass Consumed

 Biomass Available

 Biomass percentage

 Average Percentage Eaten

 Bear estimate

## Data 

```{r, echo=FALSE}
data <- read.csv("Managing_salmon_for_wildlife_Data.csv")
data
```

## Summary data

```{r, echo=FALSE}
summary(data)
```

## Box Plot Year, Biomass Comsumed

 2010 Largest amount of biomass consumed 

```{r, cache=TRUE, echo=FALSE}
ggplot(data, aes(x=Year, y=Biomass.Consumed..kg., group = Year)) +
  geom_boxplot()
```

## Box Plot Year, Biomass Available

 1997 show large amount of biomass available

```{r, echo=FALSE}
ggplot(data, aes(x=Year, y=Biomass.Available..kg., group = Year)) +
  geom_boxplot()
```

## Plots Average Percentage Eaten

 2011 highest percent eaten at (A creek) looking at the color site.

```{r, echo=FALSE}
ggplot(data, aes(x=Year, y=Average.Percentage.Eaten, color = Site)) +
  geom_point()
```

## Pipe filter Biomass Consumed mean

 description of Biomass consumed and mean for each variable

```{r, echo=FALSE}
data %>% filter(Biomass.Consumed..kg. > mean(Biomass.Consumed..kg., na.rm = TRUE))
```

## Scale point size, color, alpha

 scale able make changes with size and color(red), alpha, 

```{r, echo=FALSE}
ggplot(data, aes(x=Year, y=Average.Percentage.Eaten, color = Site)) +
  geom_point(size = 3, color = "red", alpha = .5)
```

## Scale log scatter plot

 able scale log scatter plot, change size color(blue), alpha 

```{r, echo=FALSE}

ggplot(data, aes(x = Year, y = Biomass.Consumed..kg.)) +
  geom_point(size = 3, color = "blue", alpha = 0.5) +
  scale_y_log10() +
  scale_x_log10()

```

## facet wrap scale log scatter plot

 Facet wrap scale log scatter plot showing separate year for biomass consumed 
and biomass available

```{r, echo=FALSE}
ggplot(data, aes(x = Biomass.Consumed..kg., y = Biomass.Available..kg.)) +
  geom_point(size = 3, alpha = .5) + scale_x_log10()+scale_y_log10()+
  facet_wrap(~Year)
```

## Scatter plot Year, Biomass Comsumed

 2011-2015 large amount of biomass consumed Hansen Creek
```{r, echo=FALSE}
ggplot(data, aes(x=Year, y=Biomass.Consumed..kg., color = Site)) +
  geom_point()
```

## Scatter plot Year, Biomass Available
2006 show that Hansen Creek has the most abundant biomass we can follow
the trend 
```{r, echo=FALSE}
ggplot(data, aes(x=Year, y=Biomass.Available..kg., color = Site)) +
  geom_point()
```

## Scatter plot Biomass Available, Biomass Comsumed

```{r, echo=FALSE}
ggplot(data, aes(x=Biomass.Available..kg., y=Biomass.Consumed..kg., color = Site)) +
  geom_point()
```

## Biomass Available histogram
 Count of biomass available
```{r, echo=FALSE}
ggplot(data, aes(x= Biomass.Available..kg., fill=Site, stat="count",))+
  geom_histogram(bins = 30)
```


## Biomass Comsumed histogram
 Count of biomass consumed
```{r,  echo=FALSE}
ggplot(data, aes(x= Biomass.Consumed..kg., fill=Site, stat="count",))+
  geom_histogram(bins = 30)
```

## Time line series Biomass Available

```{r, echo=FALSE}
p <- data %>%
  ggplot( aes(x=Year, y=Biomass.Available..kg.)) +
    geom_line(color="Green") +
    ylab("Biomass.Available..kg.")
p
```

## Time line series Biomass Consumed

```{r, echo=FALSE}
p <- data %>%
  ggplot( aes(x=Year, y= Biomass.Consumed..kg.)) +
    geom_line(color="Red") +
    ylab("Biomass.Consumed..kg.")
p
```

## Copper River Sockeye 
![image alaskatourjobs](https://www.alaskatourjobs.com/wp-content/uploads/2017/06/Copper_River_Salmon_Facts.jpg)


## Finding

This presentation shows that bears benefit from the contribution of fisheries management in wildlife. Data indicated an increased food supply for Bears from 1997 through 2018, supported by fisheries management data showing a trending uptick of increased biomass (A Creek, C Creek, Hansen Creek, and Pedro Ponds). Furthermore, securing funding to support research and fisheries management to continue their studies and maintain salmon species in Alaska and the surrounding tributary help maintain Mother nature’s food web.


## Citation 

Lincoln, A., Hilborn, R., Wirsing, A. J., & Quinn, T. P.. (2019). Managing salmon for wildlife: do fisheries limit salmon consumption by bears in small Alaskan streams? (Version 1). figshare. https://doi.org/10.6084/m9.figshare.10315925.v1 ([])

