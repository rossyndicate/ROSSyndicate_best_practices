# store this file in your src/ folder or similar, and then you can automatically
# load these using `source("style_snippets/ROSS_themes.R")` (as one would source
# using the current folder structure of this repo)

require(tidyverse)
require(ggthemes)

# basic theme for all ggplots
ROSS_theme <- theme_bw() + #or theme_few()
  theme(plot.title = element_text(hjust = 0.5, face = 'bold'),
        plot.subtitle = element_text(hjust = 0.5)) 

# example implementation:
# ggplot(df, aes(x = xval, y = yval)) +
#   geom_point() +
#   ROSS_theme

# ROSS-branded color palette
ROSS_lt_pal <- c("#002EA3", "#E70870", "#256BF5", 
                 "#745CFB", "#1E4D2B", "#56104E")

ROSS_dk_pal <- c("#1E4D2B", "#E70870", "#256BF5",
                 "#FFCA3A", "#745CFB", "#C3F73A")

ROSS_acc_pal <- c("#56104E", "#745CFB", "#FFCA3A", "#1E4D2B")

# example implementation:
# ggplot(df, aes(x = xval, y = yval)) +
#   geom_point() +
#   scale_color_manual(values = ROSS_lt_pal) +
#   ROSS_theme
# 
# can be used in the following grob arguments:
# scale_color_manual(values = ROSS_lt_pal)
# scale_fill_manual(vales = ROSS_lt_pal)

# for continuous color palettes:
# scale_*_tableau() 
# * = fill, color, etc

