setwd("C:\\Users\\ddhan\\OneDrive\\Desktop\\IT24103594")

options(digits = 6)
options(scipen = 999)

prob_binom_eq <- function(x, n, p) dbinom(x, size = n, prob = p)
prob_binom_le <- function(x, n, p) pbinom(q = x, size = n, prob = p)
prob_binom_ge <- function(x, n, p) 1 - pbinom(q = x - 1, size = n, prob = p)
prob_binom_between_incl <- function(a, b, n, p) pbinom(b, n, p) - pbinom(a-1, n, p)

prob_pois_eq <- function(x, lambda) dpois(x, lambda)
prob_pois_gt <- function(x, lambda) 1 - ppois(x, lambda)
prob_pois_ge <- function(x, lambda) 1 - ppois(x-1, lambda)

line <- function() cat("------------------------------------------------------------\n")

cat("==== Worked Examples ====\n")

n1 <- 44; p1 <- 0.92
cat("Example 1: X ~ Binomial(n =", n1, ", p =", p1, ")\n")
ans_1ii  <- prob_binom_eq(40, n1, p1)
cat(" (ii) P(X = 40)     = ", round(ans_1ii, 6), "\n")
ans_1iii <- prob_binom_le(35, n1, p1)
cat(" (iii)P(X <= 35)    = ", round(ans_1iii, 6), "\n")
ans_1iv  <- prob_binom_ge(38, n1, p1)
cat(" (iv) P(X >= 38)    = ", round(ans_1iv, 6), "\n")
ans_1v   <- prob_binom_between_incl(40, 42, n1, p1)
cat(" (v)  P(40 <= X <= 42) = ", round(ans_1v, 6), "\n")
line()

lambda2 <- 5
cat("Example 2: X ~ Poisson(lambda =", lambda2, ")\n")
ans_2iii <- prob_pois_eq(6, lambda2)
cat(" (iii)P(X = 6)      = ", round(ans_2iii, 6), "\n")
ans_2iv  <- prob_pois_gt(6, lambda2)
cat(" (iv) P(X > 6)      = ", round(ans_2iv, 6), "\n")
line()

cat("==== Exercises ====\n")

n_ex1 <- 50; p_ex1 <- 0.85
cat("Exercise 1: X ~ Binomial(n =", n_ex1, ", p =", p_ex1, ")\n")
# ans_ex1_ii <- prob_binom_ge(47, n_ex1, p_ex1)
# cat(" (ii) P(X >= 47) = ", round(ans_ex1_ii, 6), "\n")
line()

lambda_ex2 <- 12
cat("Exercise 2: X ~ Poisson(lambda =", lambda_ex2, ")\n")
# ans_ex2_iii <- prob_pois_eq(15, lambda_ex2)
# cat(" (iii) P(X = 15) = ", round(ans_ex2_iii, 6), "\n")
line()
