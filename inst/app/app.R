library(shiny)

source(file.path(system.file("app/source", package = "myPackage"), "hello.R"))

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
