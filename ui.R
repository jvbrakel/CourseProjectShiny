
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Forecast MPG based on Weight and Horsepower"),
  h5('This app forecasts the MPG based on Weight and Horsepower. The data utilized was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption (MPG) and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models). The data utilize is part of R and is called ‘mtcars’. It was pulled into the dataset variable for analysis and no transformation were performed for this analysis'),

  h5('To forecast MPG, we require two inputs, the first is Horsepowers and second is weight (lb/1000)'), 
  h5('Utilize the sliders in the input section to set the parameters, the result section shows the output'),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
          h1('Inputs'),
      sliderInput("Horsepower",
                  "Gross horsepower",
                  min = 10,
                  max = 40,
                  value = 20),
    
    sliderInput("Weight",
                "Weight (lb/1000):",
                min = 1,
                max = 5,
                step = 0.1,
                value = 3)
  ),

    # Show a plot of the generated distribution
    mainPanel(
          h3 ('Results of prediction'),
          h4 ('The following forumla is used : '),
          
          code ('MPG = 37.2 - 3.88 x Weight - 0.03 x Horsepower'),
          verbatimTextOutput("prediction")
     # plotOutput("distPlot")
    )
  )
))
