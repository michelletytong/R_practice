x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'e', 'e')
print(x)

x[-which(names(x) == "c")]
x[-which(names(x) == "d")]
?which

x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
print(x)

x > 7
x[x>7]
x > 7 | x < 5
x[x < 7 & x > 4]

coat <- c("calico","black","tabby")
coat
weight <- c(2.1,5.0,3.2)
weight
likes_string <- c(1,0,1)
likes_string
cats <- data.frame(coat,weight,likes_string)
cats
cats$weight
cats$coat

age <- c(4,5,8)
age

cats <- cbind(cats,age)
cats

newRow <- list("tortoiseshell",3.3,TRUE,9)
newRow

levels(cats$coat)
str(cats)

cats$coat <- as.character(cats$coat)

str(cats)
cats <- rbind(cats,newRow)
cats

cats[-4,]

na.omit(cats)

?na.omit

## Day 2 of the R workshop -- with Bill McClung (Software Carpentry)

library(gapminder) #loads the library called gapminder

## These are commands to use to understand or study the strucuture and attributes of gapminder
str(gapminder)
length(gapminder)
gapminder
typeof(gapminder)

nrow(gapminder) #gives number of rows of gapminder
ncol(gapminder) #gives number of columns of gapminder
dim(gapminder) #returns a vector of the dimensions of the tbl/data-frame 
colnames(gapminder) #returns a vector of strings (the column names)
head(gapminder) #returns the top rows and colunms
tail(gapminder) #returns the bottom rows and columns

gapminder[5] #returns a tbl of the 5th column
str(gapminder[5])
head(gapminder[c(1,5)])
gapminder[1:3,] #returns of a tibble of first number indexes the rows, second number indexes the columns. No input implies a wild card -- here meaning "all the colums"
gapminder[3,] #returns tibble of 3rd row of all columns

cats
str(cats[3,])

gapminder$year #returns all objects in "year" as a vector
str(gapminder$year)

cats[1]
cats$coat
cats["coat"]
cats[1, 1]
cats[, 1]
cats[1, ]

gapminder[gapminder$year == 1957,] #returns a tibble of all data from 1957
gapminder$year

gapminder[,5:6] #returns tibble of all data from column 5 and 6 by only showing 5 & 6
gapminder[,-(1:4)] #returns tibble of all data from column 5 and 6 by removing 1,2,3,4

gapminder[gapminder$lifeExp > 80,] #returns a tibble with all data where life expectancy is greater than 80
gapminder[1]

dim(gapminder[-c(1:79),])
dim(gapminder)

gapminder[1, c(4,5)]

# These are both ways to just view the data for 2002 and 2007
gapminder[gapminder$year == 2002 | gapminder$year == 2007,] # the | is the OR
gapminder[gapminder$year %in% c(2002,2007),] 

gapminder_small <- gapminder[c(1:9,19:23),]
gapminder_small

set.seed(10)
x <- rpois(1,lambda = 8)
x

if (x>8) {
  print ("x>8")
}

z <- 1
while (z > 0.1) {
  z <- runif(1) #chooses a random number from a uniform dist between 0 and 1
  print(z)
}

for (purpleasdf in 1:10) {
  print(purpleasdf)
}

library(gapminder)
gapminder

gapminder$continent
continents <- unique(gapminder$continent)
continents
str(continents)

for (i in continents) {
  life <- mean(gapminder[gapminder$continent == i, "lifeExp"]$lifeExp)
  great <- life > 65
  if (great == TRUE) {
    cat("The mean life expectancy of",i, "is", life, "which is greater than 65.\n")
  }
  else {
  #if (great == FALSE){
    cat("The mean life expectancy of",i, "is", life, "which is less than 65.\n")
  }
  #cat("The mean life expectancy of",i, "is", life, "which is", great, ".\n")
}

mean(gapminder[gapminder$lifeExp, "lifeExp"]$lifeExp)

??$
