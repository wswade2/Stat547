# Welcome to the histomax function!
#
# This function is designed to plot a histogram for every numeric variable
# in a dataset using just one line of code.
# The color of the histograms can be set using colorz = ""



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

