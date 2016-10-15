#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(fluidPage(
    titlePanel("New York Air Quality Measurements"),
    
    sidebarLayout(
    sidebarPanel(
        
        helpText("Choose Airquality Variable"),
        
        selectInput("variable", "",
                    c("Ozone" = "Ozone",
                      "Solar.R" = "Solar.R",
                      "Wind" = "Wind",
                      "Temp" = "Temp",
                      "Month" = "Month",
                      "Day" = "Day"))
    ),
        
        mainPanel(
            h3("The following exercise is carried out to observe the effect of various variables on 
               Temperature in New York from May to September 1973."),
            h2("Regression Plot"),
            plotOutput("Plot"),
            h2("Summary Statistics"),
            verbatimTextOutput("summaryFit")
        )
    )
))
    