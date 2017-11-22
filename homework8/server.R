library(shiny)
library(tidyverse)

bcl <- read.csv("bcl-data.csv", stringsAsFactors = FALSE)

server <- function(input, output) {
	output$countryOutput <- renderUI({
		selectInput("countryInput", "Country",
								sort(unique(bcl$Country)),
								selected = "CANADA")
	})  
	
	filtered <- reactive({
		if (is.null(input$countryInput)) {
		return(NULL)
		}
		
		data <- bcl %>%
			filter(Price >= input$priceInput[1],
						 Price <= input$priceInput[2],
						 Type == input$typeInput,
						 Country == input$countryInput
			) 
		return(data)
		
	})
	
	
	
	output$myplot <- renderPlot({
		 if (is.null(filtered())) {
		 	return()
		}
		ggplot(filtered(), aes(Alcohol_Content)) +
			geom_histogram(fill = input$Color)
	})
	

	
	output$mytable <- renderTable({
		filtered()
	})
}


