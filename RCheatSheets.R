# Introductory Cheat Sheets for R

# THE VERY BASICS: Data types
# In the first part of the cheat sheets I will quickly cover the different basics of the data structures

## SCALARS
# In R, a scalar can be simply defined using "<-" operator, this opereator will be used repetedly
one <- 1 
ten <- 10
eleven <- one + ten 

print(eleven)

myname <- "JuanPablo"
print(myname)

## VECTORS 
# The next item in the list are the vectors, vectors can containg different types of values
# and you have to use the "c()" notation to build them 
v1 <- c(1, 2, 3)
v2 <- c(4, 5, 6)

# You can use +, -, *, and / operators 
v3 <- v2 * 2 # this will multipkly each element of v2 by 3 

# Vectors can be also added element wisely
v4 <- v1 + v2 

# or the sum of all the elements
total <- sum(v4)
total

# you can also compute the mean using the "mean()" function
mean <- mean(v1)

# You can also add names to the different itemes using the function names
names(v1) <- c("uno", "dos", "tres")

# using the "[]" notation you can call different elements of a vector 
v1[1] 
v1[c(1,2)]
v1[1:3]

## MATRICES
print("matrices")
# The last element in this introuductory section are the matrices
# You can build matrices using the "matrix()" function, here you will have to specify byrow and nrow 
mat1 <- matrix(1:9, byrow = TRUE, nrow = 3)

# Matrices can also be built using vectors and the "c()" funtion
mat2 <- matrix(c(v1, v2, v3), byrow =TRUE, nrow = 3)

# You can also name the columns and rows of the matrices usinf "colnames()" and "rownames()" respectively
cnames <- c("a", "b", "c")
colnames(mat2) <- cnames
mat2

# Another useful functions are rowSums() and colSums
vm <- colSums(mat2)

# Just like with vectors we can perform operations element wisely using scalars 
matby5 <- mat1 * 5

# If you want you can combine matrices together, be careful of the dimensions
mat3 <- cbind(mat1, mat2) 
mat4 <- rbind(mat1, mat2)

# Just like with vectors, you can use square brakets to subset your matrices
mat1[1,] # will return the first row
mat1[,2] # will return the second column
mat1[1:2, ] # will return the first and second rows of all columns

# Finally, we have that we can perform operations between matrices 
mat5 <- mat1 * mat2 # will return the multiplication of both matrices element-wise
mat5

# LISTS! 
## Finaly the last item in the list of basic data types are the lists! 
## One of the characteristics of lists is that you can store many different types of information
## including other lists. To build list you simply have to use the function "list()".

my_list <- list(mat5, v4, mat2, v1)
my_list 

## In a similat way to the vectors, you can give names to the itmes that compose the list using the 
## function "list()"

names(my_list) <- c("uno", "dos", "tres", "cuatro")
my_list

## can select the different intems stored in the list by either using the "[[]]"  or the list$name notations
my_list$uno

# DATAFRAMES: In this section we introduce the Dataframes
# As a data scientits you will constantly bee working with different types of data store in the same 
# dataset, this format is known as DATAFRAME
data(mtcars) # Load the mtcars dataset for the examples

head(mtcars)

# Loading libraries into R
library(dplyr)

# Filter, you can use filter when you wanna see only one subset of the observations
# you can do this using the function filter and the pipe operator %>% 
mtcars %>% filter(gear == 4, disp == 160)

# Arrange, with the arrange verb you can sort the observations in a dataset in ascending or descinding order
# this is usefull when you want to observe the extreme observations in a dataset.
mtcars %>% arrange(gear)
mtcars %>% arrange(desc(gear))

# Mutate, is useful to change variables in dataset or create new variables, for this you have to use 
# the %>% and the verb mutate()
mtcars %>% mutate(uno = 3*gear)

# Variable assignment
mtcars2 <- mtcars %>% filter(gear==4)

############################
# Now that i have covered some of the basics I will start with the assigment itself
# the first DATA SCIENCE TASK that i have found is the Instalation of usage of different libraries
# to use a library you first have to install it, to do so we use the function "install.packages()"

#install.packages("dplyr")
#library(gapminder)

## INTRODUCTION TO EDA
# First step


## Data wrangling and transformation

## Data visualisation
# For data visualisation we will be using ggplot2 package the first step in this is using 
# the install.packages("ggplot2") and then calling the library everytime you start a new R session
library(ggplot2)

# There are three parts for eevery ggplot graph:
# 1: the data that you are going to use
# 2: the mapping of variables from the variables to the aestetics
# 3: you especify the type of graph that you are creating
data(mtcars)
ggplot(mtcars, aes(x = mpg, y = hp)) +
    geom_point()

## Extra options: 
# Log scale: can be useful for cases when there are differences in scale, to use it you have to add an extra
# option can can either be scale_x_log10() or scale_y_log10()

# Additional aesthetics:
# Color: To use the color aesthetic you have to include it in the aes part of the plot
mtcars <- mtcars %>% mutate(gear = as.factor(gear))
ggplot(mtcars, aes(x=mpg, y=hp, color= gear)) +
    geom_point()

# Size: Just like with color, yoiu have to add the size aesthetic inside the aes section
ggplot(mtcars, aes(x=mpg, y=hp, color= gear, size = wt)) +
    geom_point()

# Faceting: