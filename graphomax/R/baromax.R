#' Welcome to the baromax function!
#'
#' This function is designed to plot 2x2 barplots with standard error bars using only
#' one line of code.
#'
#' To use it, simply specify the dataset, x, y, and fill
#' These types of plots are designed for cases where y is numeric and
#' both x and fill are categorical variables.
#'
#' Change the width of the error bars by specifying error_width = ___

baromax<- function(data, x, y, fill, error_width=.2){
	ggplot(data) +
		aes_string(x, y, fill = fill) +
		stat_summary(fun.y=mean, geom = "bar") +
		stat_summary(fun.data = mean_cl_normal,
								 geom="errorbar",
								 width=error_width,
								 position=position_dodge(width=.9)) +
		theme_bw() +
		theme(panel.grid.major = element_blank(),
					panel.grid.minor = element_blank())

}

# Example:
#baromax(data = iris,x = "Species", y = "Sepal.Width", fill = "Species")


