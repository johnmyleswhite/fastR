log.likelihood <- function(choices, a, delta)
{
  u2 <- discounted.value(choices$X2, choices$T2, delta)
  u1 <- discounted.value(choices$X1, choices$T1, delta)
  p <- invlogit(a * (u2 - u1))
  likelihoods <- ifelse(choices$C == 1, p, 1 - p)
  return(sum(log(likelihoods)))
}
