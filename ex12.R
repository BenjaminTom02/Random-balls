#bai 12
library(Devore7)
data(ex01.12)

str(ex01.12)
x <- ex01.12$SpecGrav

mean_val   <- mean(x)
median_val <- median(x)
trim_10    <- mean(x, trim = 0.1)  
sd_val     <- sd(x)
var_val    <- var(x)
iqr_val    <- IQR(x)

cat("Mean:", mean_val, "\n")
cat("Median:", median_val, "\n")
cat("Trimmed Mean (10%):", trim_10, "\n")
cat("Std Dev (s):", sd_val, "\n")
cat("Variance (s^2):", var_val, "\n")
cat("IQR:", iqr_val, "\n\n")
print(summary(x))

#par(mfrow = c(1, 2))

hist(x, breaks = 6, main = "Histogram of SpecGrav", xlab = "Specific Gravity", col = "lightblue", border = "white")
boxplot(x, horizontal = TRUE, main = "Boxplot of SpecGrav", col = "lightgreen", xlab = "Specific Gravity")

#par(mfrow = c(1, 1)) 
stem(x)

