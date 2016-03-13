library(shiny)
shinyUI(
  navbarPage("IMC Calculator", 
  
  tabPanel("Check you IMC",  
  sidebarPanel(    
    sliderInput('weight', 'Input your wight in Kilos',value = 70, min = 30, max = 280, step = 1 ), 
    sliderInput('height', 'Input your height in meters',value = 1.70, min = 1.00, max = 2.50, step = 0.05),  
    submitButton('Submit')
  ), 
  mainPanel(    
    h4('For a height of '), 
    verbatimTextOutput("height"),
    h4('and a weight of '),
    verbatimTextOutput("weight"),
    h4('IMC indicates you\'re '),
    verbatimTextOutput("IMCResult")
  )
),
tabPanel("About",
         mainPanel(
           includeMarkdown("document.Rmd")
         )
)
)
)