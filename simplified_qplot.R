## qplot substitute 

if (!require(ggplot2)) install.packages('ggplot2')
library(ggplot2)

Qplot <- function(x, y, ..., data, geom = NULL, method = 'loess'){
  #caller_env <- parent.frame()
  exprs <- enquos(x = x, y = y, ...) 
  mapping <- class_mapping(exprs, env = parent.frame())
  if ("color" %in% names(mapping)) names(mapping)[which(names(mapping) == "color")] <- "colour"
  if (is.null(geom)) geom = "point"
  if ("point" %in% geom) p <- ggplot(data, mapping) + geom_point()
  if ("jitter" %in% geom) p <- ggplot(data, mapping) + geom_jitter()
  if ("smooth" %in% geom) p <- p + geom_smooth(method = method)
  p
}

