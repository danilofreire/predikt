

library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
  
    # Predikt.
    titlePanel("Predikt"),
  
    sidebarLayout(
        sidebarPanel(
            textInput("obs", "Please type your phrase or word here:"),
            
            helpText("Note: This widget will use this statement to predict the most likely next word."),
            
            submitButton("Predikt")
        ),
      
      mainPanel(
          h3("Predicted Word:"),
          div(textOutput("BestGuess"), style = "color:blue"),
          br(),
          h3("Other Likely Words"),
          tableOutput("view"),
          
          h5(tags$a(href="http://rpubs.com/danilofreire/predikt", "RPubs presentation") ),
          h5(tags$a(href="http://github.com/danilofreire/predikt", "GitHub repository") )
    )
  )
))
