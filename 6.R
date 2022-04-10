n <- 100
m <- 50
std.deviasi <- 8

#a
set.seed(100)
random <- rnorm(100)
rata.rata <- mean(random)
x1 <- floor(rata.rata)
x2 <- ceiling(rata.rata)
z1 <- (x1 - m) / std.deviasi
z2 <- (x2 - m) / std.deviasi
rnorm(n = 100, mean = m, sd = std.deviasi)
plot(rnorm(n = 100, mean = m, sd = std.deviasi))

#b
hist(rnorm(n = 100, mean = m, sd = std.deviasi), xlab="x", ylab="y" ,breaks = 50, main = "5025201252_Okyan Awang Ramadhana_Probstat_E_DNhistogram")

#c
varians <- std.deviasi ** 2
