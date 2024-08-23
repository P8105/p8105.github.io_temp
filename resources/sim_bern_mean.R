sim_bern_mean = function(n, prob) {
  
  sim_data = tibble(
    x = rbinom(n, 1, prob)
  )
  
  sim_data %>% 
    summarize(p_hat = mean(x))
}