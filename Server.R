library(shiny)
eruptiontime<-function(waiting){0.07562795*waiting-1.87401599}
y<<-0
shinyServer(
    function(input,output){
        y<<-y+1
        output$inputValue<-renderPrint({input$waiting})
        output$prediction<-renderText({
            input$goButton
            isolate(eruptiontime(input$waiting))
            })
        output$go<-renderText({
           if(input$goButton==0)"You have not pressed the button"
           else if (input$goButton==1)"You pressed it once"
           else "Please quit pressing it"
        })
        output$user<-renderText(y)
    }
    )