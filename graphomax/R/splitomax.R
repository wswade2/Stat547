library(tidyverse)
# split condition (and copy it) so you have 3 columns
# one is the unmodified condition column
# the other 2 are the two factor columns from your factorial design

splitomax <- function(data, labelz = c("factor1", "factor2")) {
	data$condition1 <- data$condition
	data<-separate(data, condition, into=c("factor1", "factor2"))

}

splitomax(iris)



