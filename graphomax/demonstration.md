# Demonstration
Wade  
November 29, 2017  

```r
# baromax<- function(data, x, y, fill, error_width=.2){
# 	ggplot(data) +
# 		aes_string(x, y, fill = fill) +
# 		stat_summary(fun.y=mean, geom = "bar") +
# 		stat_summary(fun.data = mean_cl_normal,
# 								 geom="errorbar",
# 								 width=error_width,
# 								 position=position_dodge(width=.9)) +
# 		theme_bw() +
# 		theme(panel.grid.major = element_blank(),
# 					panel.grid.minor = element_blank())
# 
# }
```



```r
library(ggplot2)
```

```
## Warning: package 'ggplot2' was built under R version 3.3.3
```

```r
library(graphomax)
baromax(data = iris,x = "Species", y = "Sepal.Width", fill = "Species")
```

![](demonstration_files/figure-html/unnamed-chunk-2-1.png)<!-- -->


```r
# histomax <- function(data, colorz="gray85"){
# 	names<-names(data)
# 	NCOL<-ncol(data)
# 	for (i in 1:NCOL){
# 		if (is.numeric(i)==FALSE)
# 			next
# 		hist(data[,names[i]],
# 				 main = paste(colnames(data)[i]),
# 				 xlab = "",
# 				 col=colorz)
# 	}
# }
```



```r
iris$Species<-NULL
histomax(iris)
```

![](demonstration_files/figure-html/unnamed-chunk-4-1.png)<!-- -->![](demonstration_files/figure-html/unnamed-chunk-4-2.png)<!-- -->![](demonstration_files/figure-html/unnamed-chunk-4-3.png)<!-- -->![](demonstration_files/figure-html/unnamed-chunk-4-4.png)<!-- -->
