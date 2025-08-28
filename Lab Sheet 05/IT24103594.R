setwd("C:\\Users\\ddhan\\OneDrive\\Desktop\\IT24103594")

delivery_times <- read.table("Exercise - Lab 05.txt", header = TRUE)
head(delivery_times)

breaks <- seq(20, 70, length.out = 10)
hist(delivery_times$Delivery_Time_.minutes.,
     breaks = breaks,
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     col = "lightblue",
     border = "black")

delivery_times$Delivery_Time_.minutes. <- as.numeric(as.character(delivery_times$Delivery_Time_.minutes.))

freq_table <- table(cut(delivery_times$Delivery_Time_.minutes., breaks = breaks, right = FALSE))
cum_freq <- cumsum(freq_table)

mid_points <- breaks[-length(breaks)] 
mid_points <- c(breaks[1] - (breaks[2]-breaks[1]), mid_points)  
cum_freq <- c(0, cum_freq)
plot(mid_points, cum_freq, type = "o", col = "red",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency")