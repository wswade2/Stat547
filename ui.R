

ui <- fluidPage(
	titlePanel("BC Liquor Store prices"),
	sidebarLayout(
		sidebarPanel(
			sliderInput("priceInput", "Price", 0, 100, c(25, 40), pre = "$"),
			radioButtons("typeInput", "Product type",
									 choices = c("BEER", "REFRESHMENT", "SPIRITS", "WINE"),
									 selected = "WINE"),
			uiOutput("countryOutput"),
			tags$img(src="bc_liquor_logo.png")
		),
		mainPanel(
			tabsetPanel(type="tab",
									tabPanel("Plot"),
									tabPanel("Histogram", plotOutput("coolplot"))),
			plotOutput("coolplot"),
			br(), br(),
			tableOutput("results")
		)
	)
)








