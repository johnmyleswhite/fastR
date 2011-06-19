library('compiler')

wrapper <- function(x) {-log.likelihood(choices, x[1], x[2])}

logit.estimator <- function()
{   
  optimization.results <- optim(c(1, 1), wrapper, method = 'L-BFGS-B', lower = c(0, 0))
  
  return(optimization.results$par)
}

l <- cmpfun(logit.estimator)

start.time <- Sys.time()
logit.estimator()
end.time <- Sys.time()
mle.4 <- end.time - start.time
print(mle.4)
