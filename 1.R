n <- 100
m <- 50
standar.dev <- 8

#a
set.seed(100)
random <- rnorm(100)
rata.rata <- mean(random)
x1 <- floor(rata.rata)
x2 <- ceiling(rata.rata)
z1 <- (x1 - m) / standar.dev
z2 <- (x2 - m) / standar.dev
rnorm(n = 100, mean = m, sd = standar.dev)
plot(rnorm(n = 100, mean = m, sd = standar.dev))

#b
hist(rnorm(n = 100, mean = m, sd = standar.dev), xlab="x", ylab="y" ,breaks = 50, main = "5025201252_Okyan Awang R_Probstat_E_DNhistogram")

#c
varians <- standar.dev ** 2
