#' @title Predict Height from given Weight
#' @description
#' predict value with linear model from NHIS dataset
#'
#' @usage expectHeight(weight = 50)
#' @usage expectHeight(weight = c(40, 50, 60))
#'
#' @param weight numeric vector
#'
#' @return numeric vector of expected height
#'
#' @seealso [lm()]
#'
#' @importFrom magrittr %>%
#' @export
#'
expectHeight <- function(weight){
  input <- data.frame(
    G1E_WGHT = weight
  )
  height <- predict(model, input) %>%
    round(digits = 1)
  return(unname(height))
}
