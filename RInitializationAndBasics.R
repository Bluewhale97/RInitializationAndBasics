```r
#1. Obtaining and installing R
# at http://cran.r-project.org

#2. An object in R is about everything(data, functions, grphs, analytic results, and more)

#3. case study: studying physical development from collection of the ages and weights of 10 infants in their first year of life.
age <-c(1,3,5,2,11,9,3,9,12,3)
weight <-c(4.4,5.3,7.2,5.2,8.5,7.3,6.0,10.4,10.2,6.1)
mean(weight)
sd(weight)
cor(age,weight)
plot(age,weight)

#4. check demos to get a sense of what R can do graphically
demo()
demo(persp)
demo(Hershey)
demo(image)

#5. getting help
help.start() #general help

help("foo") # help on function foo(quotation makrs optional)
?foo

help.search("foo") #searches the help system for instances of the string foo
??foo

example("foo") #example of function foo(quotation marks optional)

RSiteSearch("foo")  #Seaches for the string foo in online help manuals and archived mailing

apropos("foo", mode="function") #lists all available functions with foo in their name

data()  #lists all available example datasets contained in currently loaded packages

vignette #lists all available vignettes for currently installed packages

vignette("foo") #displays specific vignettes for topic foo

#6. functions for managing the R workspace
getwd() #lists the current working directory

setwd("C:/Users/Urchin/Documents") #changes the current working directory to my directory

ls() #lists the objects in the current workspace

rm(a,b,r,x,x.at,y,y.at) #removes or delets one or more objects

help(options) #provides information about available options

options() #lets you view or set current options

history(3) #displays your last # commands(default =25)

savehistory("myfile") # saves the commands history to myfile(default = .Rhistory)

loadhistory("myfile") # reloads a command's history(default=.Rhistory)

save.image("myfile") # saves the workspace to myfile(default=RData)

save(x, file="myfile")#saces specific objects to a file

load("myfile") #loads a workspace into the current session

q() #quits R

#7. input and output

source("myscript.R") #input a set of R statements contained in the file myscript and run it

sink("myscript.R", append =F, split =F) #text output to the file myscript, if the file is already existed, its contents are overwritten. append =T to append text rather than overwriting it, split=T means send output to both the screen and the output file

bmp("filename.bmp") #graph output: bmp, jpeg, pdf, png, postscript, svg, metafile has the same grammer, using one of them and use dev.oof() to return output to the terminal
dev.off() # return graph output to the terminal

#8. packages 
# http:// cran.r-project.org/web/packages
.libPaths() #show where the library is located
library() #show what packages we have saved in the library
search() #which packages are loaded and ready to use

#9. installing a package
install.packages("gclus")
update.packages("gclus")
installed.packages()

#10. loading a package
library(gclus)

#11. learning about a package
help(package="gclus")

#12. Batch processing

#13. Using output as input

install.packages("mtcars")
lm(mpg~wt, data=mtcars)
lmfit <-lm(mpg~wt, data=mtcars)
summary(lmfit)
plot(lmfit)
cook<-cooks.distance(lmfit)
plot(cook)
predict(lmfit, mtcars)
```
