# P1_Probstat_E_5025201252

<h2>Daftar Isi</h2>

- [Soal 1](#soal-1) <br>
	- [Soal 1a](#soal-1a)
	- [Soal 1b](#soal-1b)
	- [Soal 1c](#soal-1c)
	- [Soal 1d](#soal-1d)
	- [Soal 1e](#soal-1e)
- [Soal 2](#soal-2) <br>
	- [Soal 2a](#soal-2a)
	- [Soal 2b](#soal-2b)
	- [Soal 2c](#soal-2c)
- [Soal 3](#soal-3) <br>
	- [Soal 3a](#soal-3a)
	- [Soal 3b](#soal-3b)
	- [Soal 3c](#soal-3c)
	- [Soal 3d](#soal-3d)
- [Soal 4](#soal-4) <br>
	- [Soal 4a](#soal-4a)
	- [Soal 4b](#soal-4b)
	- [Soal 4c](#soal-4c)
- [Soal 5](#soal-5) <br>
	- [Soal 5a](#soal-5a)
	- [Soal 5b](#soal-5b)
	- [Soal 5c](#soal-5c)
- [Soal 6](#soal-6) <br>
	- [Soal 6a](#soal-6a)
	- [Soal 6b](#soal-6b)
	- [Soal 6c](#soal-6c)


<h3>Soal 1</h3>
<strong>Deskripsi </strong>

Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

<h4>Soal 1a</h4>
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
(distribusi Geometrik)

```
x <- 3
p <- 0.2    
q <- 1 - p
result <- dgeom(x, p)
```

<h4>Soal 1b</h4>
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

```
mean(rgeom(n = 10000, prob = p) == 3)
```

<h4>Soal 1c</h4>
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

```
summary(result)
summary(mean(rgeom(n = 10000, prob = p) == 3))
```

<h4>Soal 1d</h4>
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

```
n = 10000
hist(rgeom(n, prob = p), main = 'Histogram Geometrik')
```

<h4>Soal 1e</h4>
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik

```
rataan <- 1/p
varians <- (1-p)/p^2
```

<h3>Soal 2</h3>
<strong>Deskripsi </strong>

Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

<h4>Soal 2a</h4>
Peluang terdapat 4 pasien yang sembuh.

```
vr <- 4
comb <- function(n, x) {
  factorial(n) / factorial(n-x) / factorial(x)
}
result <- comb (n, vr) * p^vr * (1 - p)^(n - vr)
```

<h4>Soal 2b</h4>
Gambarkan grafik histogram berdasarkan kasus tersebut.

```
hist(rbinom(vr, n, prob = p), xlab = "X", ylab = "Frekuensi",main = "Histogram Distribusi binomial")
```

<h4>Soal 2c</h4>
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.

```
rataan <- n * p
varians <- n * p * (1-p)
```

<h3>Soal 3</h3>
<strong>Deskripsi </strong>

Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

<h4>Soal 3a</h4>
Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

```
ppois(x, lambda = lambda, lower = FALSE)
```

<h4>Soal 3b</h4>
simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)

```
x <- 6
n <- 365
result <- dpois(1:365, lambda = lambda, log=FALSE)
hist(result, xlab = "probabilitas", ylab = "hari", main = 'HISTOGRAM POISSON')
```

<h4>Soal 3c</h4>
dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan

```
a <- summary(ppois(x, lambda = lambda, lower = FALSE))
b <- summary(result)
```

<h4>Soal 3d</h4>
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.

```
rataan <- varians <- lambda
```

<h3>Soal 4</h3>
<strong>Deskripsi </strong>

Diketahui nilai x = 2 dan v = 10. Tentukan:

<h4>Soal 4a</h4>
Fungsi Probabilitas dari Distribusi Chi-Square.

```
ans <- dchisq(x, v, ncp = 0, log = FALSE)
```

<h4>Soal 4b</h4>
Histogram dari Distribusi Chi-Square dengan 100 data random.

```
set.seed(100)
curve(result <- rchisq(x, v, ncp = 0), from = 0, to = 100 ,xlab='x', ylab="v", main="HISTOGRAM POISSON")
```

<h4>Soal 4c</h4>
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.

```
rataan <- v
varians <- 2 * v
```

<h3>Soal 5</h3>
<strong>Deskripsi </strong>

Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

<h4>Soal 5a</h4>
Fungsi Probabilitas dari Distribusi Exponensial

```
expo <- function (lambda, x){
  if (lambda > 0) {
    return((1/lambda) * exp(x/lambda*-1))
  }
  return (0)
}
```

<h4>Soal 5b</h4>
Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random

```
set.seed(1)
N <- 10
rexp(N, lambda)
hist(rexp(N, lambda))
N <- 100
rexp(N, lambda)
hist(rexp(N, lambda))
N <- 1000
rexp(N, lambda)
hist(rexp(N, lambda))
N <- 10000
rexp(N, lambda)
hist(rexp(N, lambda))
```

<h4>Soal 5c</h4>
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3

```
rataan <- lambda
varians <- lambda^2
```

<h3>Soal 6</h3>
<strong>Deskripsi </strong>

Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

<h4>Soal 6a</h4>
Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).

```
set.seed(100)
random <- rnorm(100)
rata.rata <- mean(random)
x1 <- floor(rata.rata)
x2 <- ceiling(rata.rata)
z1 <- (x1 - m) / std.deviasi
z2 <- (x2 - m) / std.deviasi
rnorm(n = 100, mean = m, sd = std.deviasi)
plot(rnorm(n = 100, mean = m, sd = std.deviasi))
```

<h4>Soal 6b</h4>
Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan seperti pada soal

```
hist(rnorm(n = 100, mean = m, sd = std.deviasi), xlab="x", ylab="y" ,breaks = 50, main = "5025201252_Okyan Awang Ramadhana_Probstat_E_DNhistogram")
```

<h4>Soal 6c</h4>
Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

```
varians <- std.deviasi ** 2
```
