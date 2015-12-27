library(shiny)
pageWithSidebar(
     # Application title
     headerPanel("Prediction about favour of artist:"),
     sidebarPanel(

         tags$a('Document',href='help.html'),
         numericInput('age', 'Input your age', 18, min = 5, max = 80, step = 1),
         submitButton('Submit')
     ),
     mainPanel(
         h4('Which artist you like '),
         verbatimTextOutput("prediction")
     )
 )