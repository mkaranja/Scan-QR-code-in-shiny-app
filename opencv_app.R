
library(shiny)
library(opencv)

# Define UI
ui <- fluidPage(
  titlePanel("Read QR code in real-time"),

  fluidRow(
    actionButton("barcode", "Scan Barcode"),
    textOutput("results")
  )
)



# Define server logic
server <- function(input, output, session) {

  observeEvent( input$barcode , {
    identity <- opencv::qr_scanner(draw = FALSE, decoder = "wechat")

    output$results <- renderText({
      identity
    })

  })
}

shinyApp(ui, server)
