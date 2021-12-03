#####supportingFunctions.R

###This Function works to convert .txt files to .csv files 
part1<-function(dir){
  setwd(dir)
  FILE<-list.files( pattern = ".txt")
#the function starts by addressing the argument as a directory which can be changed by the user.
#It continues by creating a variable called FILE which takes all the .txt files in a given directory
  for(i in 1:length(FILE)){
    data.csv<-read.table(FILE[i], header=TRUE)
    write.csv(data.csv, file=FILE[i], row.names=FALSE)
  }
}
#the For Loop reads-in all the .txt files and rewrites them as .csv files

part1(dir="/Users/edeeg/Documents/practice/tutorial/Rproject2021/countryY")

setwd("/Users/edeeg/Documents/practice/tutorial/Rproject2021/countryY")
list.files()
#to run the function "Part1", the working directory is specified ^. 


#END




function2 <- function(dir, country){
  setwd(dir)
  FILES <- list.files(pattern=".csv")
  for(i in 1:length(FILES)){
    if(i==1){
      allfile <- read.csv(FILES[i], sep=",", header=TRUE)
      allfile <- allfile %>% mutate(country=country)
      allfile <- allfile %>% mutate(Day=substr(FILES[i], 8,10))
    }else{
      file <- read.csv(FILES[i], sep=",", header=TRUE)
      file <- file %>% mutate(country=country)
      file <- file %>% mutate(Day=substr(FILES[i], 8,10))
      allfile <- rbind(allfile, file)
    }
  }
  return(allfile)
}