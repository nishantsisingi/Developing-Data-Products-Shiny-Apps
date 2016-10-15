#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(pageWithSidebar(
    
    # Application title
    headerPanel("Old Faithful Geyser Data"),
    
    # Sidebar with a slider input for number of bins
    sidebarPanel(
        sliderInput("bins",
                    "Number of bins: 
                     Eruption time in mins",
                    min = 1,
                    max = 50,
                    value = 30
                    )
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
        h3("Data Description"),
        p("Waiting time between eruptions and the duration of the eruption for the 
          Old Faithful geyser in Yellowstone National Park, Wyoming, USA."),
        p("The project's objective is to plot a histogram using this dataset."),
        p("Choose the number of bins for the first variable, eruptions - Eruption time in mins"),
        plotOutput("distPlot")
    )
))