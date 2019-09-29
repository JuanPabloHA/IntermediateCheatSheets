# Introductory Cheat Sheets for Python
import pandas as pd 
import matplotlib.pyplot as plt
import os 

# WORKING DIRECTORY
cwd = os.getcwd()
print(cwd)

# Change workign directory
os.chdir('/Users/temp/DSP/titanic/')

# LOAD CSV DATA
titanic = pd.read_csv('train.csv')

# Exploratory Data Analysis: 
## What questions are you trying to solve?
## What kind of data do you have?
## What is missing from the data

titanic.head()
titanic.info()
titanic.describe()

# Value counts
print(titanic['Pclass'].value_counts(dropna=False))

# Visual Exploratory data analysis:
titanic['Age'].plot(kind = 'hist')
plt.show()

# Boxplots
titanic.boxplot(column='Age', by='Survived')
plt.show()

# Creating new columns 
titanic['uno'] = 'uno'

# Deleting columns
titanic = titanic.drop('uno', axis=1)

# filtering data set    
titanic[(titanic.Age>=30) & (titanic.Survived==1)]

assert pd.notnull(titanic).all().all(), ('Missing values')


# PYTHON  AS A CALCULATOR
one = 1
ten = 10 
eleven = one + ten 
print(eleven)

myname = "Juan Pablo"
print(myname)

type(myname)

# Data Types

## PYTHON LIST: to creta list we use the square brackets notation. The values can be of any type, even more lists
numeros = [1, 2, 3, 4, 5]
numeros 

nums2 = [
    ['uno', 1],
    ['dos', 2],
    ['tres', 3], 
    ['cuatro', 4],
    ['cinco', 5]]
type(nums2)

# subsetting lists, Note that python uses cero indexing
numeros[0]

nums2[-1] # negative indexing 
nums2[-1][0] # Note that for subsetting lists of lists you have to use double square bracket notation

# slicing, note that the element after the colom is excluded
numeros[0:3]

# List manipulation: 
# Updating values: useful to update the values contained in lists
nums2[-1][0] = 'Cinco'
nums2

# Adding values:
nums2 = nums2 + [['seis', 6]]

# Deleting values
numeros =  numeros + [6, 7]
del(numeros[-1])
numeros

# Useful python functions
max(numeros)
len(numeros)
type(numeros)
sorted(numeros, reverse = True)

# Methods: functions that belong to objects 
numeros.index(5)

# depending on the type of the objects the methods will be different
myname = 'juan'
myname.capitalize()


# INSTALLING PACKAGEs IN PYTHON
# pip install numpy 
# pip install matplotlib d
import numpy as np 
import matplotlib.pyplot as plt



## VECTOR: ypu create them with the np.array() function where the imput is a python list
my_list = [1, 2, 3, 4, 5]
my_list2 = [2, 4, 6, 8, 10]


np_array = np.array(my_list)
np_array2 = np.array(my_list2)

np_a3 = np_array2/np_array
np_a3

## Matrices



# Loading datasets

# Basic EDA

## Data wrangling and transformation

## Data visualisation
