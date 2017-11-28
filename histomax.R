
histomax <- function(data, col="gray15"){
	names<-names(data)
	ncol<-ncol(names)
	for (i in ncol){
	hist(data[,name],
			 main = paste(colnames(data)[i]),
			 xlab = "")
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