inputProg <- function(regtext = "Registration"){
  path <- getwd()
  current <- as.numeric(as.data.frame(read_excel(paste(path, "/data/currentyear.xlsx", sep = ""), col_types = NULL)))
  data <- as.data.frame(read_excel(paste(path, "/data/data.xlsx", sep = ""), col_types = NULL))
  prog <- data[data[, "Year"] == current, "prog_version"]

  data <- data[data[, "Year"] == current, ]
    
  data["program"] <- paste("[Draft program (status: ", prog, ")](", data[, "Program"], ")", sep = "")
  data["registration"] <- paste("[", regtext, "](", data[, "Registration"], ")", sep = "")
  data["a"] <- paste("[2025 ASA Biopharmaceutical Section Regulatory-Industry Statistics Workshop](", data[, "asafda"], ")", sep = "")
  data["year"] <- current
  
  return(data)
}