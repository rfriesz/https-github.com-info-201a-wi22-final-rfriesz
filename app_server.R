data <- read.csv("https://raw.githubusercontent.com/owid/co2-data/master/owid-co2-data.csv")
data <- na.omit(data)
data <- filter(data, data$country == "United States")


server <- function(input, output) {
  
  output$plot1 <- renderPlot({
    plot(data$year, data$co2, xlab = "Years", ylab = "Total CO2 in USA")
    title(main = "Total CO2 Emissions in USA from 1990 - 2016")
  })
  
  output$info <- renderText({
    paste0("x=", input$plot_click$x, "\ny=", input$plot_click$y)
  })
}