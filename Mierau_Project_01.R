############################################################################## 
### file: Titanic       
### authors: Savannah Mierau     
### creation date: 6 Sept 2020
### description: descriptives analysis for Titanic data
############################################################################## 
#read in the data
titanic <- read.csv("~/Desktop/titanic.csv")
head(titanic)

#age - creating a subset for age, looking at how many children there were and how many adults. 
child <- subset(titanic, Age == "Child")
child
dim(child) #109 children
adult <- subset(titanic, Age =="Adult")
adult
dim(adult) #2092 adults
2092 + 109 # # 2201 checked to see that this matches total observations in titanic

#sex - creating a subset for sex to look at distribution of sex
female <- subset(titanic, Sex == "Female")
female
dim(female) #470 females
male <- subset(titanic, Sex =="Male")
male
dim(male) #1731 males
1731 + 470 # 2201 checked to see that this matches total observations in titanic

####creating a subset for class###
#first class 
first <- subset(titanic, Class == "1st")
first
dim(first)
#325 are in first class
firstsurv <- subset(first, Survived == "Survived")
firstsurv
dim(firstsurv)
#203 in first class survived 
firstdied <- subset(first, Survived == "Died")
firstdied
dim(firstdied)
#122 died in first class (122 + 203 = 325) #checked to see that this matches total passengers in first class

#second class
second <- subset(titanic, Class == "2nd")
second
dim(second)
# 285 are in second class
secondsurv <- subset(second, Survived == "Survived")
secondsurv
dim(secondsurv)
#118 in second class survived 
seconddied <- subset(second, Survived == "Died")
seconddied
dim(seconddied)
#167 died in second class (118 + 167 = 286) #checked to see that this matches total passengers in second class

#third class
third <- subset(titanic, Class == "3rd")
third
dim(third)
# 706 are in third
thirdsurv <- subset(third, Survived == "Survived")
thirdsurv
dim(thirdsurv)
#178 third class passengers survived
thirddied <- subset(third, Survived == "Died")
thirddied
dim(thirddied)
# 528 (178 + 528 = 706) #checked to see that this matches total passengers in third class

706 + 285 + 325 # 1316 were passengers
#crew
crew <- subset(titanic, Class == "Crew")
crew
dim(crew)
# 885 were crew 
#### creating a subset for class - end ###

885 + 1316 #2201
#checked observations to see that total is equal to total observations in original data set 

#Looking at variables within each subset
mcrew <- subset(crew, Sex == "Male")
mcrew
dim(mcrew) 
#862
fcrew <- subset(crew, Sex == "Female")
fcrew
dim(fcrew)
#23
childcrew <- subset(crew, Age == "Child")
childcrew
dim(childcrew) # 0 
adultcrew <- subset(crew, Age == "Adult")
adultcrew
dim(adultcrew) #885
