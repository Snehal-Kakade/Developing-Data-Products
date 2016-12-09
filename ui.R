# This application takes two inputs from the user:
# 1) Slider input
# 2) Text in the input text box
# Application will generate the histogram using the slider input and will display 
# the text inputed by the user.


library(shiny)

# Define UI for application that draws a histogram

fluidPage(
  titlePanel("Developing Data Products Project"),
  fluidRow(
    column(3, wellPanel(
      sliderInput("n", "N:", min = 10, max = 1000, value = 200,
                  step = 10),
      textInput("text", "Text:", " Insert your text here"),
      submitButton("Submit")
    )),
    column(6,
           plotOutput("plot1", width = 400, height = 300),
           verbatimTextOutput("text")
    )
  )
)