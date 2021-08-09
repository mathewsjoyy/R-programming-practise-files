data("ToothGrowth")
View(ToothGrowth)

# Need to install package then call the library
install.packages('dplyr')
library(dplyr)

filterd_tg <- filter(ToothGrowth,dose==0.5)
View(filterd_tg)

arrange(filterd_tg,len) # Arrange by len column

arrange(filter(ToothGrowth,dose==0.5),len) # Does exact same as above functions


# Pipe statement (still using same as above)
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5) %>% 
  arrange(len)

View(filtered_toothgrowth)


# Pipe statement (similar to above but more)
filtered_toothgrowth2 <- ToothGrowth %>%
  group_by(supp) %>%
  summarise(mean_len = mean(len,na.rm = T),.group="drop")

View(filtered_toothgrowth)

