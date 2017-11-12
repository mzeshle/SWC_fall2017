# This scirpt computes the average GDP for Albania using gapminder dataset

#location of the data
filename <- "../R_intro/gapminder.txt"
gapminder <- read.table(filename, header = TRUE)

#create a variable to store a country name
countryName <- 'Algeria'

#select the raws where the country is (Albania) and store albaniaData
albaniaData <- gapminder[gapminder$country == countryName,]
#DON'T FORGET THE COMMAS
#Select the column containing the GDP per capita from our Albania
albaniaGDP <- albaniaData$gdpPercap
#calculating the mean
albaniaAvgGDP <- mean(albaniaGDP)
print(albaniaAvgGDP)
print(paste("Avg GDP of ",countryName, 'is',albaniaAvgGDP))

