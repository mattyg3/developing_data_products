library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
        dd <- rnorm(input$obs)
        hist(dd)
  })
  
})
