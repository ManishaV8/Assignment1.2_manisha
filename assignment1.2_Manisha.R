#1. What should be the output of the following Script?

v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v%/%t)

#Ans-->  [1] 0 1 1

##################################

#2. You have 25 excel files with names as xx_1.xlsx, xx_2.xlsx,........xx_25.xlsx in a dir.
#Write a program to extract the contents of each excel sheet and make it one df.

#Step1: Create a path where all the xlsx files are place  and set the path
setwd("E:\\Acadgil assignments\\Assignment\\Excel assignment")

#Step2: Download the library readxl to read the excel files.
install.packages("readxl")

#Step3: Activate the library readxl
library(readxl)

#Here we are reading all the excel files of a particular folder
file.list <-list.files(pattern='*.xlsx')
#Using lapply we are bringing the data and saving it in df
df.list<-lapply(file.list,read_excel)
df.list

#3. If the above 25 files were csv files, what would be your script to read?

#Here we need not inport any packages as R base package have the liberty of importing CSV files.
temp = list.files(pattern="*.csv")
myfiles = lapply(temp, read.delim)
