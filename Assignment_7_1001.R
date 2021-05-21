#Assignment 7 

"
Please Note:
-------------------------------------------------------------
1. Uncomment line: 13 and comment line: 15 for another dataset
2. Line:20 - Linear Model Summary for coefficients
3. Line:28 - Quadratic Model Summary for coefficients
"

#Linear Model

#data <- data.frame(x=c(6, 9, 12, 14, 30, 35, 40, 47, 51, 55, 60), y=c(14, 28, 50, 70, 89, 94, 90, 75, 59, 44, 27))

data <- data.frame(x=c(1,2,3,4,5), y=c(2,5,4,8,6))

plot(data, pch = 16, cex = 1.3, col="orange")

linear_model <- lm(y~x, data=data)
summary(linear_model) #prints Coeff
#Linear Model Line
abline(linear_model, lwd=2, col=2)  


#Quadratic Model
data$x2 <- data$x^2
quad_model <- lm(y~x + x2, data=data)
summary(quad_model)   #prints Coeff

#prediction state
x_val <- seq(0, 60, 0.1)
y_pred <- predict(quad_model, list(x = x_val, x2 = x_val^2))

#Quadratic Model Line
lines(x_val, y_pred, lwd=2, col=4)


legend("topleft", legend = c("Linear Reg","Quadratic Reg"), lty = 5, col = c(2,4), lwd = 3, box.lty = 2)
