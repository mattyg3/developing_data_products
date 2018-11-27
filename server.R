library(shiny)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$plot <- renderPlot({
        dd <- rnorm(input$obs)
        {hist(dd, col = "blue", main = "Normal Distribution")
            abline(v=mean(dd), col="red")}
    })
    
    output$doc <- renderPrint({
        a <- "To use this tool, simply select the number of observations in the slider on the left and the tool will automatically run a random normal distribution. The red line is the mean of the random data" 
        a
    })
    output$calc <- renderPrint({
        b <- "Calculation performed to create plot: dd <- rnorm(input$obs); {hist(dd, col = blue, main = Normal Distribution); abline(v=mean(dd), col=red)}"
        b
    })
    
})
