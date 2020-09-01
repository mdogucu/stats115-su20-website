## Go over rstan
## Do not run the following code ###############################################
normal_regression_model <- "
  data{
  int <lower =0> n;
  vector[n] Y;
  vector[n] X;
  }
  
  parameters{
   real beta_0;
   real beta_1;
   real <lower=0> sigma;
  }
  
  model{
  Y ~ normal(beta_0 +beta_1*X, sigma);
  beta_0 ~ normal(0, 2500);
  beta_1 ~ normal(100, 250);
  sigma ~ exponential(0.00005);
  
  }
"

################################################################################
###RESOURCES####################################################################
## Stan Functions Manual
## https://mc-stan.org/docs/2_24/functions-reference/index.html