library(devtools)
devtools::use_testthat()
install.packages("testthat")
library(testthat)
library(graphomax)

#test_check("graphomax")
load_all()

devtools::check()


