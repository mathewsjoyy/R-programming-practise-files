install.packages("tidyverse")
library(ggplot2)

# Load the data and view it
data("diamonds")
#View(diamonds)
head(diamonds)
str(diamonds) # See more insight into data

library(tidyverse) # Load tidyverse
mutate(diamonds, carat_2=carat*100) # Add a new column which is just carat*100