#install.packages('GeneralizedHyperbolic', repos='https://mirror.rcg.sfu.ca/mirror/CRAN/', lib='./R')
library(GeneralizedHyperbolic, lib.loc='./R')

x_seq <- seq(-2, 2, length.out = 400)

compute_dghyp <- function(x) {
	density <- dghyp(x, mu=0, delta=0.5, alpha=1, beta=0.5, lambda=-0.5)
	data.frame(x=x, density=density)
}

res <- lapply(x_seq, compute_dghyp)
data <- do.call(rbind, res)
write.csv(data, file='ref.csv', row.names=FALSE)

# curve(dghyp(x, mu=0, delta=0.5, alpha=1, beta=0.5, lambda=-0.5), -2, 2, n=400)
