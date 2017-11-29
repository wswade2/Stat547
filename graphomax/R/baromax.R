library(ggplot2)


# take dataset
# split condition (and copy it) so you have 3 columns
# one is the unmodified condition column
# the other 2 are the two factor columns from your factorial design
# One should be assigned to x and one should be assigned to fill (in the 2x2 bar graph)
#
#
#
#
#
#
#
baromax <- function(data, x, y, fill){
ggplot(data) +
		aes_string(x, y, fill = fill) +
	geom_col() +
		theme_bw() +
		labs(main = "", x=x, y=y) +
		scale_fill_hue(name=fill)
}

baromax(data = iris,x = "Species", y = "Sepal.Width", fill = "Species")
# This works, but we want to be able to graph the mean

head(iris)
