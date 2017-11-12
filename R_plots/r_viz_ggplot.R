# Scrirpt for data visualazation portion of SWC lesson
# by Daren Card
#UTA SWC Workshop
#2017/11/12

### Installing and loading the 
#install.packages("ggplot2")
#library(ggplot2)
gapminder <- read.table("../R_intro/gapminder.txt", header = TRUE)

#defining the coordinates and data                    + # defining the type of plot
ggplot(data = gapminder, aes(x=gdpPercap, y= lifeExp)) + geom_point()

## challenge modify the example so that the figures show 
#how life expectancy changes over time
ggplot(data = gapminder, aes(x=year, y= lifeExp)) + geom_point()

## modify the prev example so that the data point are colored by country

ggplot(data = gapminder, aes(x=year, y= lifeExp)) + geom_point(aes(x= year,y=lifeExp, color= country),show.legend = FALSE)
ggplot(data = gapminder, aes(x= year,y=lifeExp, color= country)) + geom_point(show.legend = FALSE)



##### adding layers

ggplot(data = gapminder, aes(x= year,y=lifeExp, color= country)) + geom_point() + geom_line() + theme(legend.position = "none")

#let's make the lines all one color

ggplot(data = gapminder, aes(x= year,y=lifeExp)) + geom_point(aes(color=country)) + geom_line() + theme(legend.position = "none")

### adding text

ggplot(data = gapminder, aes(x= year,y=lifeExp, color= country)) + geom_point()  + theme(legend.position = "none") + labs(x="Year",
                                                                                                                                      y="Life Expectancy",
                                                                                                                                       title="Figure 1.")

#manipulate scales (i.e., transformation)

ggplot(data = gapminder, aes(x=gdpPercap, y= lifeExp)) + geom_point() + scale_x_log10()

####  Smoothing
ggplot(data = gapminder, aes(x=gdpPercap, y= lifeExp)) + geom_point() + scale_x_log10() + geom_smooth(method="loess")

#### faceting the data

starts.with <- substr(gapminder$country,start = 1,stop=1)
az.countries <- gapminder[starts.with %in% c("A","Z"),]
ggplot(data = az.countries, aes(x= year,y=lifeExp, color= country)) + geom_point()+ theme(legend.position = "none") +facet_wrap(~country)


