path <- getwd()

# list all talks in a directory
tab <- data.frame(list.files("C:/rufibach/70_Service/EFSPI/webpages/20_workshop/workshop/data/2024/slides/"))
write.table(tab, file = "C:/Users/kaspa/Desktop/xxx.csv", row.names = FALSE, col.names = FALSE)

library(PBSmodelling)
openFile(fname = "C:/Users/kaspa/Desktop/xxx.csv")


