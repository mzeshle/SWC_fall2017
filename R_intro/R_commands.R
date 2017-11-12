sqrt(100) #square root of a number
print("hello, world!") # print/return a text value 
print(77) # print a number
install.packages("knitr") #install a package
library(knitr) #load a library
?print #inquire about a command
help(mean) #inquire about a command 
# use # to comment
name <- "Jane" # create and assign a variable a text value
name  #retrieve the variable
price <- 3.99 #create and assign a variable a numerical value
price
print(price)
96/4
mass <- 47.5
mass 
ls() # list available variables 
ls #ERROR won't show anything
ls()
rm(name) # remove a variable
rm(list=ls()) # remove 
name <- "jane"
res <-  sqrt(64)
rm(name)
res
age <- 45 
length(age) #returns how many elements are in the variable
str(age) #find the structure
typeof(age) #return the type of a variable
score <-79
score 
is.integer(score) #check whether an intger or not
typeof(is.integer(score)) #nested function
#how to create a multi-element variable 
v <- c(1:10) # c is used to concatenate
v
length(v)
str(v)
typeof(v)
head(v, n=2) # see the first set of n values
tail(v, n=2) # see the last set of n values
#manipulate data
v <- c(v, 56) # add an element
v
#vectorization 
v1 <- v*2
v1
#change data type 
v2 <- as.character(v1) #change to text
v2 
#creating matrices
m <- matrix(c(1:18), 3, 6) #create a matrix (values, rows, columns)
m
dim(m) #view the dimensions of your matrix

#factors are used for categorical elements
f <- factor(c("M","F","F"))
f
str(f)
#list can have different types of data HOWEVER 
#a vector can only have similar types of data
l <-list("Afghanistan", 1995, 86)
l
str(l)
length(l)

#challenge 1 #

element1 <- c("chicken", "soup","salad","tea") #menuItems
element2 <-factor(c("solid","liquid","solid","liquid")) #categorical data
element3 <-c(4.99,2.99,3.29,1.89)
myOrder <-list(element1,element2,element3)
myOrder
str(myOrder)
length(myOrder)
myOrder
element2
length(element1)
length(element2)
length(element3)
myOrder_df <-data.frame(element1,element2,element3) #creating a data frame for data list that have same length
myOrder_df




### Subsetting ###
### by position index
v <- c(10:20)
v
v[7] #Index starts from 1 in R # here we are calling the 7th element
v[7:10] #calling the item with index 7 through 10
v[-c(7:10)] #exclduing data
myOrder[1]
myOrder[3]
myOrder_df[3,3] #display a cell designated by row,column
myOrder_df[,3]
myOrder_df[3,]


#### Subsetting by NAME

  myOrder_df$element2 #use dollar sign $
  
  
  
##### subsetting by logical vectors ###  
  
### < less than 
### > greater than
### == equal to 
### <= less or equal to
### >= greater or equal to
v <- c(2,3,4,5,6,5,6)
v1 <- v[v==5]
v1 <- v[v<4]
v1
df1 <- myOrder_df[myOrder_df$element3<3,]
df1

###########
### IMPORTING DATA ###
myData <-read.table("gapminder.txt", header = TRUE)

ls(myData)
head(myData)
##read.csv("path_to_the_file")

tail(myData)
dim(myData)
length(myData)


############## Challenge 2 ################### 
#### What is the structure of the data?
str(myData)
#### type of data ###

typeof(myData)
typeofdata <- myData

### extract 3rd and 5th column of the dataset 

myData[,c(3,5)]
myData 
#### extract the list of countries 

countries <- unique(myData[,1])
countries


#### information about Sweden

info <- myData[myData$country=="Sweden",]
info
###### life expectancy < 70 

lifeexpect <- myData[myData$lifeExp<70,]
lifeexpect


#### 
millionpop <- myData$pop/1000000
millionpop
myData$popM <- millionpop ##creating a new column
###############

