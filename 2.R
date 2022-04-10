n <- 20
p <- 0.2

#a
vr <- 4
comb <- function(n, x) {
  factorial(n) / factorial(n-x) / factorial(x)
}
result <- comb (n, vr) * p^vr * (1 - p)^(n - vr)

#b
hist(rbinom(vr, n, prob = p), xlab = "X", ylab = "Frekuensi",main = "Histogram Distribusi binomial")

#c
rataan <- n * p
varians <- n * p * (1-p)
