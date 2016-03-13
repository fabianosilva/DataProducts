library(shiny)

imcResult <- function(height,weight){
  imc <- weight/(height^2)
  if(imc<=18.5)
    "Bellow weight"
  else if(imc>=25)
    "Overweight"
  else
    "Normal weight"
  
}

shinyServer(
  function(input,output){
    output$height <- renderPrint(input$height)
    output$weight <- renderPrint(input$weight)
    output$IMCResult <- renderPrint(imcResult(input$height,input$weight))
  }
)