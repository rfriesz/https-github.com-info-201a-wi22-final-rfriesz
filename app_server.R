dat <-read.csv("https://raw.githubusercontent.com/rfriesz/info-201a-wi22-finalassignment-rfriesz/main/owid-co2-data.csv")
ui <- fluidPage(theme = shinytheme("cerulean"),
  navbarPage(
    
    "Climate Change Report",
  
     
   
    tabPanel("Introductory Page",
             mainPanel(
               h1("Introduction"),
               
               h4("This project is about analyzing data regarding climate change, specifically co2 emissions. With this data set I will be able to create a visualization to draw focus to some of the problems it is causing. Exploring trends in co2 emissions from different countries and over time will reveal some of the major causes of climate change and hopefully spark ideas to improve the future"),
              
               h5("Average co2 across all countries and years"),
               number <- mean(dat$co2, na.rm = TRUE),
               textOutput(number),
               
               h5("Average co2 per capita across all countries and years"),
               number <- mean(dat$co2_per_capita, na.rm = TRUE),
               textOutput(number),
               
               h5("Average trade co2 across all countries and years"),
               number <- mean(dat$trade_co2, na.rm = TRUE),
               textOutput(number),
               
               h5("Average flaring co2 across all countries and years"),
               number <- mean(dat$flaring_co2, na.rm = TRUE),
               textOutput(number),
               
               
               h5("Average oil co2 across all countries and years"),
               number <- mean(dat$oil_co2, na.rm = TRUE),
               textOutput(number),
             )
    ),
    tabPanel("Visualization Page",
        mainPanel(
      
        )
    )
  )
)

