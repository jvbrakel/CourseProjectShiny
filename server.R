
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

mpg <- function (wt, hp)  37.2 - 3.88 * wt - 0.03 * hp

shinyServer(function(input, output) {

  output$prediction <- renderPrint({
       mpg(input$Weight,input$Horsepower) 
       # MPG usage = 37.2 - 3. 88 x Weight - 0.03 x Horsepower
  })

})
