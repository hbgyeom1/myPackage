library(shiny)

source("source/hello.R")

ui <- fluidPage(
  textInput("name", "Name:"),
  textOutput("out")
)

server <- function(input, output, session) {
  output$out <- renderText({
    hello(input$name)
  })
}

shinyApp(ui, server)
