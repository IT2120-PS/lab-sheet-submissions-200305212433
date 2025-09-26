setwd("C:\\Users\\am\\Desktop\\IT24103594")

nicotine <- scan("Data - Lab 8.txt", what = numeric(), skip = 1)
weights  <- scan("Exercise - LaptopsWeights.txt", what = numeric(), skip = 1)

pop_mean_nic <- mean(nicotine)

pop_var_nic  <- sum((nicotine - pop_mean_nic)^2) / length(nicotine)
pop_sd_nic   <- sqrt(pop_var_nic)

pop_mean_nic
pop_var_nic
pop_sd_nic
var(nicotine)  
sd(nicotine)  

set.seed(123)   
nic_sample_means <- replicate(30, mean(sample(nicotine, size = 5, replace = TRUE)))
nic_sample_sds   <- replicate(30, sd(sample(nicotine, size = 5, replace = TRUE)))

nic_sample_means
mean(nic_sample_means)  
sd(nic_sample_means)

pop_sd_nic / sqrt(5)

pop_mean_w <- mean(weights)
pop_var_w  <- sum((weights - pop_mean_w)^2) / length(weights)
pop_sd_w   <- sqrt(pop_var_w)


pop_mean_w
pop_var_w
pop_sd_w
var(weights) 
sd(weights) 

set.seed(123)
w_sample_means <- replicate(25, mean(sample(weights, size = 6, replace = TRUE)))
w_sample_sds   <- replicate(25, sd(sample(weights, size = 6, replace = TRUE)))

w_sample_means
mean(w_sample_means)    
sd(w_sample_means) 

pop_sd_w / sqrt(6)

write.csv(data.frame(nicotine = nicotine), "nicotine_data.csv", row.names = FALSE)
write.csv(data.frame(weights = weights),  "weights_data.csv",  row.names = FALSE)

