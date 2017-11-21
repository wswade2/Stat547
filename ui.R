

ui <- fluidPage(
	titlePanel("BC Liquor Store prices"),
	sidebarLayout(
		sidebarPanel(
			sliderInput("priceInput", "Price", 0, 100, c(25, 40), pre = "$"),
			radioButtons("typeInput", "Product type",
									 choices = c("BEER", "REFRESHMENT", "SPIRITS", "WINE"),
									 selected = "WINE"),
			uiOutput("countryOutput"),
			radioButtons("Color", "Histogram Color", 
									 choices = c("Blue", "Red", "Green", "Purple", "Orange"), selected = "Blue"),
			tags$img(src="bc_liquor_logo.png", width=275)
		),
		mainPanel(
			 tabsetPanel(type="tab",
			  						tabPanel("Table", tableOutput("mytable")),
			  						tabPanel("Histogram", plotOutput("myplot")))
		)
	)
)








