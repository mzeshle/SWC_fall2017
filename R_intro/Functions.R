fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp -32)*5/9) + 273.15
  kelvin
}
fahr_to_kelvin(32)
print(paste("Boiling point of water", fahr_to_kelvin(212)))

kelvin_to_celcius <- function(temp){
  celcius <- ((temp -273.15))
  celcius
}

fahr_to_celcius <- function(temp) {
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celcius(temp_k)
  result
}
fahr_to_kelvin(90)

fahr_to_celcius(212)

print(paste("Boiling point of water in celcius",fahr_to_celcius(212)))

#_______________________________
#Challenge 1

fence <- function(original,wrapper){
print(paste0(wrapper,original,wrapper))

}

fence("hello","!!!")
###################################

