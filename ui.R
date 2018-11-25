library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Random Data"),
  
  # Sidebar with a slider input for number of observations
  sidebarLayout(
    sidebarPanel(
       sliderInput("obs",
                   "Number of Observations for random histogram:",
                   min = 1,
                   max = 1000,
                   value = 500)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
