# Define UI for app that draws a histogram ----
##source("app_server.R")
ui <- fluidPage(theme = shinytheme("cerulean"),
  navbarPage(
    
    "Climate Change Report",
  
     
   
    tabPanel("Introductory Page",
             mainPanel(
               h1("Introduction"),
               
               h4("This is where I will have to write about the project, and describe the variables I have chosen to analyze."),
               h5(
                 "I calculated this variable"
               ),
              ## h5(
               ##  plotOutput(outputId = "avg_2020_country_co2")
              ## )
             )
    ),
    tabPanel("Visualization Page",
        mainPanel(

          
        )
    )
  )
)
