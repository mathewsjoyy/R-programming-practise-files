install.packages('palmerpenguins')
library('palmerpenguins')

install.packages('ggplot2')
library('ggplot2')


ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g))

# More advanced viz
ggplot(data=penguins)+ geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species,shape=species)) + labs(title="Body Mass vs Flipper Length")

# combining geoms
ggplot(data=penguins)+ geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g)) +
      geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,colour=species))+ 
      labs(title="Body Mass vs Flipper Length")

# Bar charts
# Default for bar charts is y=count of rows
ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut, fill=cut)) # Can do fill=clarity, can show differnce in clarity in each cut


# Facets (help us focus on important parts of our data)
ggplot(data=penguins)+ geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
    facet_wrap(~species) # facet_wrap splits the sepcfied variable up into sperate charts

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut, fill=cut))+
  facet_wrap(~cut)

# facet_grid will split the plot into facets vertically by values of first variable
# and horizontally of values of 2nd variable
# We can also just focus on one varibale by removing e.g sex and leaving ~species
ggplot(data=penguins)+ geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  facet_grid(sex~species)


# Labelling and annoatating graphs
ggplot(data=penguins)+ geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g)) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,colour=species))+ 
  labs(title="Body Mass vs Flipper Length", subtitle="Sample of 3 penguin species", caption="Data collected by Dr nobody")+
  annotate("text",x=220, y=3500, label="The Gentoo's are the largest", fontface="bold", size=3, colour="purple")

# Saving plots
# (ggplot will save most recent plot and its current size)
# Or just use the 'Export' option in plots
ggplot(data=penguins)+ 
    geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, colour=species))
ggsave("Palmer_Penguins_Viz2.png")
                                   