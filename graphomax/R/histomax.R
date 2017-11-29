# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'



histomax <- function(data, colorz="gray85"){
	names<-names(data)
	NCOL<-ncol(data)
	for (i in 1:NCOL){
		if (is.numeric(i)==FALSE)
			next
		hist(data[,names[i]],
				 main = paste(colnames(data)[i]),
				 xlab = "",
				 col=colorz)
	}
}


histomax(iris)


# For loops follow the following syntax:
#
# 	for (var in seq) { expr }
#
# That is to say: For each variable in this
# sequence (or each element in this set), execute this expression.

# roxygen2::roxygenize()
# library(powers)
