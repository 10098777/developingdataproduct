shinyUI(pageWithSidebar(
   headerPanel("Predicting geyser eruption time from the waiting time"),
   sidebarPanel(
       dateInput("date","System time:"),
       numericInput('waiting','waiting time input (unit:min,min=25):',0,min=25,max=1000,step=0.1),
       actionButton("goButton","Go!")
       ),
   mainPanel(
       p('This shinyApp is used to predict the duration time of eruption of the  
         Old Faithful geyser at Yellowstone National Park from the waiting time   
         between eruptions.The underlying prediction algorithm is a linear regression  
         model fitted to the Faithful dataset in the datasets package in R.It is  
         in the form that: eruption=0.07562795*waiting-1.87401599.Just input a waiting time
         value, the predicted eruption time will be displayed on the mainpanel if you 
         click the go button.
         '),
       h3('The waiting time you entered is:'),
       verbatimTextOutput("inputValue"),
       h3('Results of predicted eruption time is:'),
       verbatimTextOutput("prediction"),
       h3('Have you clip on the Go button?'),
       textOutput('go'),
       h3('The number of webpage click or refresh:'),
       textOutput("user") 
       )
))