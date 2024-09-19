#Codigo para problema 2

rm(list=ls())
data=mtcars
mpg<-data$mpg
hist(data$mpg)
pie(table(mpg))
    
    