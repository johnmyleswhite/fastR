log.likelihood <- function(choices, a, delta)
{
  ll <- 0
  
  for (i in 1:nrow(choices))
  {
    u2 <- discounted.value(choices[i, 'X2'], choices[i, 'T2'], delta)
    u1 <- discounted.value(choices[i, 'X1'], choices[i, 'T1'], delta)

    p <- invlogit(a * (u2 - u1))
    
    if (choices[i, 'C'] == 1)
    {
      ll <- ll + log(p)
    }
    else
    {
      ll <- ll + log(1 - p)
    }
  }
  
  return(ll)
}
