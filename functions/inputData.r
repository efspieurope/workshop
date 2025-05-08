inputData <- function(path = getwd(), regtext = "Registration"){

  require(readxl)
  require(dplyr)
  
  data <- as.data.frame(read_excel(paste(path, "/data/data.xlsx", sep = ""), col_types = NULL))
  
  # current year
  current <- as.numeric(data %>% filter(Current == 1, na.rm = TRUE) %>% select(Year))
  data <- data[data[, "Year"] == current, ]

  # draft program with date
  data["program"] <- paste("[Draft program (status: ", data[, "prog_version"], ")](", data[, "Program"], ")", sep = "")
  
  # link to registration
  data["Registration"] <- paste("[", regtext, "](", data[, "Registration"], ")", sep = "")
  
  # ASA FDA workshop
  data["asafda"] <- paste("[2025 ASA Biopharmaceutical Section Regulatory-Industry Statistics Workshop](", data[, "asafda"], ")", sep = "")
  
  # chair with mail
  data["chairmail"] <- paste("[", data["chair"], "](mailto:", data["chairmail"], ")", sep = "")
  
  colnames(data) <- tolower(colnames(data))
  
  return(data)
}