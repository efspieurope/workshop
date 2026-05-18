library(readxl)
library(openxlsx)

sci26 <- as.data.frame(read_excel(paste("C:/rufibach/70_Service/EFSPI/workshop/20260819_11th_EFSPI_RegStat_Basel/SC_2026.xlsx", sep = ""), col_types = NULL))
sci26[, "Type"] <- factor(with(sci26, Regulator + 2 * Industry), levels = 0:2, labels = c("HTA", "Regulator", "Industry"))
write.xlsx(x = sci26, file = paste("C:/rufibach/70_Service/EFSPI/workshop/20260819_11th_EFSPI_RegStat_Basel/SC_2026_prepped.xlsx", sep = ""))
