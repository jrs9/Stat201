#' Graph Linear Regression and store Data
#' 
#' @param varx A vector of numbers.
#' @param vary A vector of numbers.
#' @return Plot the two vectors on a scatter plot along with the linear regression model, then store and return the int, slope, R, and R^2 values.
#' @examples
#' lin(c(1,2,3), c(2,4,6))
lin <- function(varx, vary){
fit <- lm(vary ~ varx)
fit$coefficients[[1]] ->> int
fit$coefficients[[2]] ->> sl0pe
lindf <<- cbind(varx, vary, int, sl0pe)
lindf <<- data.frame(lindf)
lindf <<- tbl_df(lindf)
cor(varx, vary) ->> rval
rrval <<- rval^2
paste0("The y int is ", int, " and the slope is ", sl0pe, ".", " The R value is ", rval, " and the R^2 value is ", rrval, ".") -> answer
print(answer)
ggplot(data = lindf, aes(varx, vary)) + geom_point() +
  xlab("X (Var 1)") +
  ylab("Y (Var 2)")+
  ggtitle("Simple Linear Regression")+
  geom_abline(intercept= int, slope= sl0pe)
}