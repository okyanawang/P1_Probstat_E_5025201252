lambda <- 4.5
x <- 6

#a
ppois(x, lambda = lambda, lower = FALSE)

#b
x <- 6
n <- 365
result <- dpois(1:365, lambda = lambda, log=FALSE)
hist(result, xlab = "probabilitas", ylab = "hari", main = 'HISTOGRAM POISSON')

#c
a <- summary(ppois(x, lambda = lambda, lower = FALSE))
b <- summary(result)

#d
rataan <- varians <- lambda
