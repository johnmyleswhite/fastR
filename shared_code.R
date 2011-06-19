discounted.value <- function(x, t, delta)
{
  return(x * delta ^ t)
}

invlogit <- function(z)
{
  return(1 / (1 + exp(-z)))
}

logit.estimator <- function(choices)
{ 
  wrapper <- function(x) {-log.likelihood(choices, x[1], x[2])}
  
  optimization.results <- optim(c(1, 1), wrapper, method = 'L-BFGS-B', lower = c(0, 0))
  
  return(optimization.results$par)
}

n <- 100

choices <- data.frame(X1 = rep(1, each = n),
                      T1 = rep(0, each = n),
                      X2 = rep(3, each = n),
                      T2 = rep(1, each = n),
                      C = rep(c(0, 1), by = n / 2))
