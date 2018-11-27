library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Random Data"),
    
    # Sidebar with a slider input for number of observations
    sidebarLayout(
        sidebarPanel(
            sliderInput("obs",
                        "Number of Observations:",
                        min = 1,
                        max = 5000,
                        value = 1000)
        ),
        
        # Main Panel w/ tabs
        mainPanel(
            tabsetPanel(type = "tabs",
                        tabPanel("Plot", plotOutput("plot")),
                        tabPanel("Documentation", verbatimTextOutput("doc")),
                        tabPanel("Calculation", verbatimTextOutput("calc"))
                        
            )
        )
    ))
)
