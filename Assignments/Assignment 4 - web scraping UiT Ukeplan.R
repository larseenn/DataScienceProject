## Assignment 4

#Load required packages
library(rvest)

Url <- "http://timeplan.uit.no/emne_timeplan.php?sem=20h&module%5B%5D=BED-2056-1&View=list"

Ukeplan <- read_html(Url)

Dato <- Ukeplan %>% 
  html_nodes("table-primary") %>%
  html_text()
  
Datodf <- data.frame(Oversikt = Dato)
