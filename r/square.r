square <- function(x) {
  return(x * x)
}

square_of_sum <- function(a, b) {
  return(square(a + b))
}

print(paste("Square of sum:", square_of_sum(3, 4)))
