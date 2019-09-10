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

# DATAFRAMES: In this section we introduce the Dataframes
# As a data scientits you will constantly bee working with different types of data store in the same 
# dataset, this format is known as DATAFRAME
data(mtcars) # Load the mtcars dataset for the examples

head(mtcars)

## INTRODUCTION TO EDA
# First step


## Data wrangling and transformation

## Data visualisation
