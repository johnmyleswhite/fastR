rowwise.likelihood <- function(row, a, delta)
{
  u2 <- discounted.value(row['X2'], row['T2'], delta)
  u1 <- discounted.value(row['X1'], row['T1'], delta)
  p <- invlogit(a * (u2 - u1))
  ifelse(row['C'] == 1, p, 1 - p)
}

log.likelihood <- function(choices, a, delta)
{
  likelihoods <- apply(choices, 1, function (row) {rowwise.likelihood(row, a, delta)})
  return(sum(log(likelihoods)))
}
