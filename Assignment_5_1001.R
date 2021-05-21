#Assignment 5

#Q1
n = 100  
prob <- c(n) 
for (i in 1:n)      {
  q <- 1 - (0:(i - 1))/365  # No same b'day
  prob[i] <- 1 - prod(q)  }
plot(prob, main="Q1. Probability of at least 2 people have same Birthday", xlab ="Number of People", ylab = "Probability", pch=16, cex=0.5 ,col="blue")


#Q2
poh <- 0.6 #Given
toss <- 0:10 #GIven
amount <- toss^2 - 7*toss  #Given

plot(toss, amount, main="Q2. Coin Tossing\n (Use arrow icon above to view Q1. plot)", pch=19, col=4) #q2.1

n <- 10
p <- 0:n
c <- 0
for(i in toss){
  p[c] <- (choose(n,i)*((0.6)^i)*((1-0.6)^(n-i)))
  c <- c+1
}
p

prob <- dbinom(amount, toss, poh)
exp <- sum(prob * amount)
exp