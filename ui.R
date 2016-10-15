
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
            h4("The following exercise is carried out to observe the effect of various variables on 
               Temperature in New York from May to September 1973."),
            h4("Choose a variable from the left box to see its effect on Temp"),
            h2("Regression Plot"),
            plotOutput("Plot"),
            h2("Summary Statistics"),
            verbatimTextOutput("summaryFit")
        )
    )
))
    