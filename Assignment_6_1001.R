#Assignment 6

#---------Q.1------------
#------------------------
n <- 100
p <- 0.05  #5% defective rate

m <- n*p   #mean number of defective bulbs

#Distribution: given below (line:11)
print("Ans1(i) We are going to use Poisson Distribution, since P is very small and no. of trials is large i.e., 100")

pmf <- dpois(0:n, lambda=m)
cdf <- ppois(0:n, lambda=m)

plot(cdf, main="a) Poisson's Distrubution", pch=16, col="orange")
lines(cdf, col="orange")

par(new = T)

plot(pmf, add=TRUE, axes= FALSE, pch=16, col="red")
lines(pmf, col = "red")

legend("right", legend = c("PDF", "CDF"), lty = 5, col = c(2,7), lwd = 3, box.lty = 0)



#---------Q.2------------
#------------------------
sub1 <- runif(20, 1, 100)
sub2 <- runif(20, 1, 100)
sub3 <- runif(20, 1, 100)

#correlation for the data frame
df <- data.frame(x=sub1, y=sub2, z=sub3)
correl = cor(df)
print(correl)

#NOTE: Please use the arrow icons on plots page's toolbar to navigate between each graph

plot(sub1, sub2, main="b) Subject 1 & 2", pch=16, col="darkgreen")
abline(lm(sub2~sub1), col="orange")

plot(sub1, sub3, main="c) Subject 1 & 3", pch=16, col="orange")
abline(lm(sub3~sub1), col="red")

plot(sub2, sub3, main="d) Subject 2 & 3\n(Navigate using arrow keys above for other plots)", pch=16, col="blue")
abline(lm(sub3~sub2), col="red")