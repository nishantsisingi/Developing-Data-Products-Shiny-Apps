#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(datasets)

data("airquality")
attach(airquality)

shinyServer(function(input, output) {
    formulaString <- reactive({
        paste("Temp ~ ", input$variable)
    })
    
    fit <- reactive({
        lm(as.formula(formulaString()), data = ToothGrowth)
    })
    
    output$summaryFit <- renderPrint({
        summary(fit())
    })
    
    output$Plot <- renderPlot({
        with(airquality, {
            plot(as.formula(formulaString()), main = formulaString())
            abline(fit(), col = 4)
        })
    })
})