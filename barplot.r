library(shiny)

server <- function(input, output, session) {
  
  output$plot <- renderPlot({
    electronic <- mtcars
    
    barplot(mtcars$mpg)
  })
}

ui <- basicPage(
  h1("R Shiny Bar Plot w/ data the mtcars dataset"),
  plotOutput("plot")
)

shinyApp(ui = ui, server = server)
