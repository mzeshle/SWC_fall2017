# This script computes GDP for a country using the gapmidner data
#clear all variable
rm(list=ls())

#location of the file
filename <- "../R_intro/gapminder.txt"


#read teh data file
gapminder <- read.table(filename, header = TRUE)


# extract gdpPercap from the gapminder data, using a specific country
getAverageGdpPerCapita <- function(country) {
  selectedCountryData <- gapminder[gapminder$country == country, "gdpPercap"]
  mean(selectedCountryData)
}



#Process GDP from a large vector
southAmericanCountries <- c('Argentina', 'Bolivia', 'Brazil', 'Chile', 'Colombia', 'Ecuador', 'Paraguay', 'Peru', 'Uruguay', 'Venezuela') 

# use sapply to invoke getAvgGDPP() on all elements of the southAmericanCountries

avgGDPPsouthamerica <- sapply(southAmericanCountries, getAverageGdpPerCapita)

mean(avgGDPPsouthamerica)
#sort avg gdp by ascending

avgGDPPsouthamerica <- avgGDPPsouthamerica[order(avgGDPPsouthamerica)]

#Plot the data

barplot(avgGDPPsouthamerica, las=2)
