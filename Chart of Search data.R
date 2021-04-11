> library(readxl)
> Search_data_long <- read_excel("Search data_long.xlsx")
> View(Search_data_long)   

library(ggplot2)
library(tidyverse)
library(socviz)
library(RColorBrewer)
library(scales)

head(Search_data_long)

g <- ggplot(Search_data_long, aes(x = week_of, y = search_count, group = Keyword)) +
  geom_line(aes(color = Keyword)) +
  labs(x = NULL, y = "Average Weekly Search Count (Global)", title = "Global Google Search data shows how quicly food trends go viral") +
  scale_color_brewer(palette = "Dark2") +
  theme_classic()

g + scale_y_continuous(labels = comma)
