### TRY THIS CODE ###

setwd("/Users/jackboyle/Documents/BioComputing/Rproject2021/countryY")
FILE<-list.files( pattern = ".txt")
for(i in 1:length(FILE)){
  data.csv<-read.table(FILE[i], header=TRUE)
  write.csv(data.csv, file=FILE[i], row.names=FALSE)
}

