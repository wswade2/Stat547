library(shiny)
library(tidyverse)


bcl <- read.csv("bcl-data.csv", stringsAsFactors = FALSE)

shinyApp(ui = ui, server = server)

#shiny::runApp()

# install.packages('rsconnect')
# library(rsconnect)


library(rsconnect)
rsconnect::deployApp('C:/Users/Wade/OneDrive/2017 Fall Semester/Exploratory Statistics/HW8')



