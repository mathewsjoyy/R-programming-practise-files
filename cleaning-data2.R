# Packages needed for data cleaning
install.packages("here")
library("here")
install.packages("skimr")
library("skimr")
install.packages("janitor")
library("janitor")
install.packages("dplyr")
library("dplyr")
install.packages("tidyverse")
library(tidyverse)

install.packages("palmerpenguins")
library("palmerpenguins")

head(penguins)
skim_without_charts(penguins) # Lots of indepth info
glimpse(penguins) # Short overview


penguins %>% 
  select(species) # Or put "-" infront of species for "not"

penguins %>% 
  rename(island_new=island)

# Keep names consistent
rename_with(penguins,tolower)

# Ensures names only have nums,chars and _
clean_names(penguins)

# Sort by descending order, and sort into a dataframe
penguins2 <- penguins %>% arrange(-bill_length_mm)
head(penguins2)


# Group by islands (drop null rows), and find the mean bill length
penguins %>% group_by(island) %>% drop_na() %>% summarise(mean_bill_length_mm = mean(bill_length_mm))

# Get max and mean bill length
penguins %>% group_by(species, island) %>% drop_na() %>% summarise(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))

# Get data on only specific species
penguins %>% filter(species == "Adelie")


