library(shiny)
songs <- c('Eagles','Starship','Jackson','Adele','Justin')
predictSong <- function(age){
    if(age>60)songs[0]
    else if(age>50)songs[1]
    else if(age>40)songs[2]
    else if(age>25)songs[3]
    else songs[4]
}
shinyServer(
 function(input, output) {
 output$prediction <- renderPrint({predictSong(input$age)})
 }
)