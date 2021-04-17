data("ToothGrowth")
View(ToothGrowth)

# Need to install package then call the library
install.packages('dplyr')
library(dplyr)

filterd_tg <- filter(ToothGrowth,dose==0.5)
View(filterd_tg)

arrange(filterd_tg,len)

arrange(filter(ToothGrowth,dose==0.5),len)


# Pipe statement
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarise(mean_len = mean(len,na.rm = T),.group="drop")

View(filtered_toothgrowth)

