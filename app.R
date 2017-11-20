library(shiny)
library(tidyverse)


bcl <- read.csv("bcl-data.csv", stringsAsFactors = FALSE)

shinyApp(ui = ui, server = server)

#shiny::runApp()









