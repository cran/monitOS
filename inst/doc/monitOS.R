## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(monitOS)

## ----Example #1---------------------------------------------------------------
# OS monitoring guideline retrospectively applied to Motivating Example 1
# with delta null = 1.3, delta alt = 0.80, gamma_FA = 0.025 and  beta_PA = 0.10.
bounds(
  events = c(60, 89, 110, 131, 178),
  power_int = 0.9, # βPA
  falsepos = 0.025, # γFA
  hr_null = 1.3, # δnull
  hr_alt = 0.8, # δalt
  rand_ratio = 1,
  hr_marg_benefit = NULL
)

## ----Example #2---------------------------------------------------------------
# OS monitoring guideline applied to Motivating Example 2
# with delta null = 4/3, delta alt = 0.7, gamma_FA = 0.20, beta_PA = 0.1,
# randomization ratio 2 and 0.95 HR marginal benefit
bounds(
  events = c(60, 89, 110, 131, 178),
  power_int = 0.9, # βPA
  falsepos = 0.025, # γFA
  hr_null = 1.3, # δnull
  hr_alt = 0.8, # δalt
  rand_ratio = 2, # rand_ratio
  hr_marg_benefit = 0.95
) # Marginal HR benefit

