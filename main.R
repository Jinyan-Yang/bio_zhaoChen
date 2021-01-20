library(Biostrings)

# make sure all the files are  in data// folder
fn.vec <- list.files('data',pattern = '.fa',full.names = T)

for(i in seq_along(fn.vec)){
  
  # read in the file
  tmp.df <- read.table(fn.vec[i])
  
  # find the sequence 
  index.tmp.1 <- which(tmp.df$V1 == '>HORVU3Hr1G053910')
  
  target.seq.1 <- tmp.df$V1[index.tmp.1+1]
  
  # find another sequence
  index.tmp.2 <- which(tmp.df$V1 == '>g48769')
  
  target.seq.2 <- tmp.df$V1[index.tmp.2+1]
  
  # do whpid 

  
  # Note that here is an error 
  # there are charactor E and F in the sequence which should not be?
  s1 <- DNAString(target.seq.1)
  s2 <- DNAString(target.seq.2)
  
  # then you can do what you want
  
}

