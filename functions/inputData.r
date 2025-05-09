inputData <- function(path = getwd()){

  require(readxl)
  require(dplyr)
  source(paste(path, "/functions/mailmerge.r", sep = ""))
  
  data <- as.data.frame(read_excel(paste(path, "/data/data.xlsx", sep = ""), col_types = NULL))
  colnames(data) <- tolower(colnames(data))
  
  # current year
  current <- as.numeric(data %>% filter(current == 1, na.rm = TRUE) %>% select(year))
  data <- data[data[, "year"] == current, ]

  # draft program with date
  data["program_workshop"] <- paste("10 EFSPI regulatory statistics workshop ([draft program, status: ", data[, "prog_version"], "](", data[, "program"], "))", sep = "")
  data["program"] <- paste("[Draft program (status: ", data[, "prog_version"], ")](", data[, "program"], ")", sep = "")
  
  # link to registration
  data["reg_form"] <- paste("[this form](", data[, "registration"], ")", sep = "")
  data["registration"] <- paste("[Registration](", data[, "registration"], ")", sep = "")
  
  # ASA FDA workshop
  data["asafda"] <- paste("[2025 ASA Biopharmaceutical Section Regulatory-Industry Statistics Workshop](", data[, "asafda"], ")", sep = "")
  
  # chair with mail
  data["chairmail"] <- mailmerge(data["chair"], data["chairmail"])
  data["cashiermail"] <- mailmerge(data["cashier"], data["cashiermail"])
  
  return(data)
}