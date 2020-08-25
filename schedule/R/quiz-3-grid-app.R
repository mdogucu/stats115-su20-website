### Alicia Johnson, Miles Ott, Mine Dogucu

### A Poisson-Gamma Example
## Prior for lambda is Gamma(3,1)
## x = 5, n = 1
## We know the posterior will be Gamma(8,2) 
## but let's show it with grid approximation
## lambda goes from 0 to infinity but for the purposes 
## of this simulation we will bound it 0 to 15.

# Step 1: Define a grid of 501 lambda values
lambda_grid <- seq(from = ___, to = ___, length = ___)
grid_data <- data.frame(lambda_grid)
# Step 2: Evaluate the prior & likelihood at each lambda
grid_data <- grid_data %>%
  ___(prior = dgamma(___, ___, ___)) %>%
  ___(likelihood = dpois(___, ___))
# Step 3: Approximate the posterior
grid_data <- grid_data %>%
  ___(unnormalized = ___) %>%
  ___(posterior = ___)
# Set the seed
set.seed(84735)
# Step 4: sample from the discretized posterior
post_sample <- sample_n(___, size = ___,
                           weight = ___, replace = ___)


