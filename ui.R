library(shiny)

# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(
    
    # Give the page a title
    titlePanel("Utility consumption"),
    
    # Generate a row with a sidebar
    sidebarLayout(
      
      # Define the sidebar with one input
      sidebarPanel(
        
        helpText("Data collected from 2012 to 2014.", br(),
                 "a. Select the type of utility", br(),
                 "b. Select the year", br(),
                 "c. Wach the display on right hand side"),
        
        selectInput("energy", "Type of utility:",
                    choices=c("Gas", "Electricity", "Water")),
        selectInput("year", "Year:",
                    choices=c("2012", "2013", "2014")),
        hr()
        
        ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("plot1")))))
