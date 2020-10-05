## ASSIGNMENT 3

# Loading the required packages
library(rvest)
library(tidyverse)


# Starting of by scraping both language courses from datacamp

r_datacamp <- read_html("https://www.datacamp.com/courses/tech:r")


r_datacamp %>%
  html_nodes(".course-block__title") %>%
  html_text()

r_titles <- r_datacamp %>%
  html_nodes(".course-block__title") %>%
  html_text()

view(r_titles)

python_datacamp <- read_html("https://www.datacamp.com/courses/tech:python")

python_datacamp %>%
  html_nodes(".course-block__title") %>%
  html_text()

python_titles <- python_datacamp %>%
  html_nodes(".course-block__title") %>%
  html_text()

# Create one table from both findings(?) Note to self: improve English vocabulary
# Using tibble could skip previous steps and prove findings directly
library(tibble)

tibble::tibble(
  Python = python_datacamp %>% html_nodes(".course-block__title") %>% html_text(),
  R = r_datacamp %>% html_nodes(".course-block__title") %>% html_text()
)

# Leaving the previous code as I searched an hour for a fix
# Ended up converting to data.frame add 10 rows manually and tibble thouse two together

Rdf <- data.frame(R = r_titles)
Pdf <- data.frame(Python = python_titles)

Pdf[nrow(Pdf)+10,] <- NA

tibble::tibble(
  Python = Pdf,
  R = Rdf
)



