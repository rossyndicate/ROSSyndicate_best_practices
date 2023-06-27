# add this grom to your plot to format the style of your figure.

library(tidyverse)
library(ggthemes)

# basic theme for all ggplots
ROSS_theme = theme_bw() + #or theme_few()
    theme(plot.title = element_text(hjust = 0.5, face = 'bold'),
        plot.subtitle = element_text(hjust = 0.5)) 

# in use:
ggplot(df, aes(x = xval, y = yval)) +
    geom_point() +
    ROSS_theme

# discrete color palettes:
scale_*_colorblind()
scale_*_few()

#continuous color palettes:
scale_*_tableau()

