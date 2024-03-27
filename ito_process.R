#library(ggplot2)

ito_diffusion <- function(T, N, mu, sigma, X0) {
  dt <- T / N
  t <- seq(0, T, length.out = N + 1)
  X <- numeric(N + 1)
  X[1] <- X0
  for (i in 1:N) {
    dW <- rnorm(1, 0, sqrt(dt))
    X[i + 1] <- X[i] + mu * X[i] * dt + sigma * X[i] * dW
  }
  return(list(t = t, X = X))
}

T <- 10
N <- 1000
X0 <- 1.0
scenarios <- list(
  list(0.1, 0.2, 'Scenario 1: Low drift, low diffusion'),
  list(0.1, 0.5, 'Scenario 2: Low drift, high diffusion'),
  list(0.3, 0.2, 'Scenario 3: High drift, low diffusion'),
  list(0.3, 0.5, 'Scenario 4: High drift, high diffusion')
)

par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))

for (i in seq_along(scenarios)) {
  scenario <- scenarios[[i]]
  mu <- scenario[[1]]
  sigma <- scenario[[2]]
  title <- scenario[[3]]
  result <- ito_diffusion(T, N, mu, sigma, X0)
  plot(result$t, result$X, type = 'l', main = title, xlab = 'Time', ylab = 'X(t)', col = "blue")
}


