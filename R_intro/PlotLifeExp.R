### This is life expectancy across years script ### 

myDataFull <- read.table("gapminder.txt", header = TRUE)

### Extracting all columns about Canada
Canada <- myDataFull[myDataFull$country =="Canada",]
##### Plot life expectany over the years
plot(Canada$year,Canada$lifeExp, col= "blue", type= "l")

### open the file
png("Canadaautomatic2.png")
plot(Canada$year,Canada$lifeExp, col= "blue", type= "l")

#close the device
dev.off()
