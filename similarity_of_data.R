install.packages("Tmisc")
library(Tmisc)
library(tidyverse)

data(quartet)
View(quartet)

# Comparing similarity of the data
quartet %>% 
  group_by(set) %>% summarize(mean(x), sd(x), mean(y), cor(x,y))
# We gather the data seems quite similar looking at the cor

# Generate a visualization to see similairty
ggplot(quartet, aes(x, y)) + geom_point() + geom_smooth(method=lm,se=FALSE) + facet_wrap(~set)
# From the vis we gather they are not as similar as we thought from the statistical data


install.packages("datasauRus")
library(datasauRus)

ggplot(datasaurus_dozen, aes(x=x,y=y,colour=dataset))+geom_point()+theme_void()+theme(legend.position= "none")+facet_wrap(~dataset,ncol=4)