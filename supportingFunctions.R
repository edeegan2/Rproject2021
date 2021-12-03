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

part1(dir="/Users/jackboyle/Documents/BioComputing/Rproject2021/countryY")

#to run the function "Part1", the working directory is specified ^. 


#END