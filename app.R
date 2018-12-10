library(shiny)
ui <- fluidPage(theme= "bootstrap.css",
  "hello world",
                sliderInput(inputId = "num",
                            label = "choose a number",
                            value = 25,
                            min = 1,
                            max = 100),
                textInput(inputId = "title",
                          label = "Write a title",
                          value = "Histogram of Random Normal values"),
                actionButton(inputId = "Clicks",
                             label = "Click Me!"),
                plotOutput("hist"),
                verbatimTextOutput("stats")
                )

server <- function(input, output) {
  data <- eventReactive(input$Clicks, {rnorm(input$num)})
  output$hist <- renderPlot({
    hist(data(), main = input$title)
  output$stats <- renderPrint({
    summary(data())})
  observeEvent(input$Clicks, {print(as.numeric(input$Clicks))})
  })
}

shinyApp(ui = ui, server = server)