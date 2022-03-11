data <- read.csv("https://raw.githubusercontent.com/owid/co2-data/master/owid-co2-data.csv")
data <- na.omit(data)
data <- filter(data, data$country == "United States")


ui <- fluidPage(theme = shinytheme("cerulean"),
      

  
  navbarPage(
    
    "Climate Change Report",
  
     
   
    tabPanel("Introductory Page",
             mainPanel(
               h1("Introduction"),
               
               h4("This project is about analyzing data regarding climate change, specifically co2 emissions. With this data set I will be able to create a visualization to draw focus to some of the problems it is causing. Exploring trends in co2 emissions from different countries and over time will reveal some of the major causes of climate change and hopefully spark ideas to improve the future"),
              
               h5("Average co2 across all countries and years"),
               number <- mean(data$co2, na.rm = TRUE),
               textOutput(number),
               
               h5("Average co2 per capita across all countries and years"),
               number <- mean(data$co2_per_capita, na.rm = TRUE),
               textOutput(number),
               
               h5("Average trade co2 across all countries and years"),
               number <- mean(data$trade_co2, na.rm = TRUE),
               textOutput(number),
               
               h5("Average flaring co2 across all countries and years"),
               number <- mean(data$flaring_co2, na.rm = TRUE),
               textOutput(number),
               
               
               h5("Average oil co2 across all countries and years"),
               number <- mean(data$oil_co2, na.rm = TRUE),
               textOutput(number),
             )
    ),
    tabPanel("Visualization Page",
      mainPanel(
        plotOutput("plot1", click = "plot_click"),
        verbatimTextOutput("info"),
      
      
        h5("The purpose of this graph is to see the change in total co2 emission in the United State from 1990 to 2016")
        
        
        
      )
    )
  )
)
