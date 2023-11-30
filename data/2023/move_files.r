library("filesstrings")

path.from <- "C:/Users/rufiback/Downloads/"
path.to <- "C:/rufibach/70_Service/EFSPI/webpage/20_workshop/efspiworkshop/data/2023/"
if (length(list.files(path.from)) > 0){file.move(files = paste(path.from, list.files(path.from), sep = ""), destinations = path.to, overwrite = TRUE)}
