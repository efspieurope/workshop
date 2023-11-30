library("filesstrings")

path.from <- "C:/Users/rufiback/Downloads/"
path.to <- "C:/rufibach/70_Service/EFSPI/github/efspi_workshop/data/2022/"
if (length(list.files(path.from)) > 0){file.move(files = paste(path.from, list.files(path.from), sep = ""), destinations = path.to, overwrite = TRUE)}
