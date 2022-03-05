library(dplyr)
library(readr)
library(shiny)
library(shinythemes)
##setwd('/Users/ryanf/Desktop/Data Science 201/info-201a-wi22-finalassignment-rfriesz...')
##data1 <- read.csv("owid-co2-data.csv")
source("app_ui.R")
source("app_server.R")




shinyApp(ui = ui, server = server)