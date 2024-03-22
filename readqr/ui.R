
library(shiny)

fluidPage(
    titlePanel("Read QR code in real-time"),
    fluidRow(
      actionButton("barcode", "Scan Barcode"),
      textOutput("results")
    )
)
