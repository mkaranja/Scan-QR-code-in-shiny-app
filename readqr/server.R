library(shiny)
library(opencv)

function(input, output, session) {
  observeEvent( input$barcode , {
    identity <- opencv::qr_scanner(draw = FALSE, decoder = "wechat")
    output$results <- renderText({
      identity
    })

  })
}
