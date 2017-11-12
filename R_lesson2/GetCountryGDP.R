# This script computes GDP for a country using the gapmidner data
#clear all variable
rm(list=ls())

#location of the file
filename <- "../R_intro/gapminder.txt"


#read teh data file
gapminder <- read.table(filename, header = TRUE)

#extract gdpPercapita from the gapminder data using a specific country
getAverageGDPP <- function(country,gapminder) {
  selectcountrydata <- gapminder[gapminder$country==country,"gdpPercap"]
  mean(selectcountrydata)
                              
  
}
gdpUSA <- getAverageGDPP("United_States",gapminder)
gdpMexico <- getAverageGDPP("Mexico",gapminder)
gdpCanada <- getAverageGDPP("Canada",gapminder)

  print(gdpMexico)
