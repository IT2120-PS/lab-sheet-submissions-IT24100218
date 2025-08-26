# Set working directory
setwd("C:/Users/YourName/Desktop/IT12345678")  # Replace with your path

# 1. Import dataset
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
colnames(Delivery_Times) <- "Delivery_Time"
head(Delivery_Times)

# 2. Histogram with 9 class intervals
hist(Delivery_Times$Delivery_Time, 
     breaks = seq(20, 70, length = 10), 
     right = FALSE, 
     main = "Histogram of Delivery Times (9 Classes)", 
     xlab = "Delivery Time (minutes)", 
     ylab = "Frequency")

# 4. Cumulative frequency polygon (ogive)
cum_freq <- c(0, cumsum(h$counts))
plot(breaks, cum_freq, type = "l", 
     main = "Cumulative Frequency Polygon (Ogive) for Delivery Times",
     xlab = "Delivery Time (minutes)", 
     ylab = "Cumulative Frequency", 
     ylim = c(0, max(cum_freq)))
points(breaks, cum_freq, pch = 16)