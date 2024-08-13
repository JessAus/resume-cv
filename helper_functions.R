# Disclaimer: this script was adapted from matt leary's helper_functions.R script at github.com/mleary

pacman::p_load(tidyverse, ggplot2, purrr)

# Construct language skills bar chart
build_skill_bars <- function(skill_data, section_title) {
  skill_data %>%
    ggplot(aes(x= reorder(skill, level), y = 10)) +
    geom_col(fill = "lightgrey") +
    geom_col(aes(x = reorder(skill, level), y = level), fille = "darkgrey") +
    coord_flip() +
    geom_text(aes(label = skill, y = 0.25), hjust = 0, size = 12, color = "white") +
    expand_limits(y = c(0,10)) +
    labs(x = NULL,
         y = NULL) +
    theme_void() +
    theme(panel.background = element_rect(fill = "transparent", color = NA),
          plot.background = element_rect(fill = "transparent", color = NA))
}

