# A Stochastic process simulation in R: The Itô Diffusion Process

A *stochastic process* on the probability space $(\Omega, \mathcal{F}, \mathcal{P})$ is a family of random variables $X_t$ parameterized by $t\in\mathbf{T}$, where $\mathbf{T}\subset\mathbb{R}$. If $\mathbf{T}$ is an interval we say that $X_t$ is a stochastic process in _continuous time_. If $\mathbf{T}=\{1,2,3,ldots\}$ we shall say that $X_t$ is stochastic process in _discrete time_. 

The Itô process, named after the Japanese mathematician Kiyoshi Itô, is a stochastic process used extensively in mathematical finance and stochastic calculus to model the behavior of assets whose prices evolve over time in a random manner. It is a generalization of Brownian motion and plays a fundamental role in modeling the randomness and uncertainty inherent in financial markets, making it indispensable in quantitative finance and risk management.

Mathematically, the Itô process is often defined by the stochastic differential equation (SDE): $$dX_{t}=\mu(t, X_{t})d_t+\sigma(t, X_t)dW_t$$

![ito_simulation](https://github.com/jrcarob/Ito-Diffusion-Process/assets/45860181/ff24ae7c-d8a6-46c7-a457-199321ae0544)
