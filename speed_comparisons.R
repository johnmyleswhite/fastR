source('shared_code.R')

source('mle_1.R')
start.time <- Sys.time()
logit.estimator(choices)
end.time <- Sys.time()
mle.1 <- end.time - start.time

source('mle_2.R')
start.time <- Sys.time()
logit.estimator(choices)
end.time <- Sys.time()
mle.2 <- end.time - start.time

source('mle_3.R')
start.time <- Sys.time()
logit.estimator(choices)
end.time <- Sys.time()
mle.3 <- end.time - start.time

source('mle_4.R')
start.time <- Sys.time()
logit.estimator(choices)
end.time <- Sys.time()
mle.4 <- end.time - start.time

print(mle.1)
print(mle.2)
print(mle.3)
print(mle.4)
