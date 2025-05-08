colFmt <- function(x, color = 'red'){

  require(knitr)
  
  # http://stackoverflow.com/questions/29067541/rmarkdown-how-to-change-the-font-color
  x <- as.character(x)
paste("<font color='", color, "'>", x, "</font>", sep = "")
}
