mailmerge <- function(person, mail){
  res <- paste("[", person, "](mailto:", mail, ")", sep = "")
  return(res)
}