
s <- read.csv("~/Downloads/Salaries.csv")

min(s$salary)
max(s$salary)
mean(s$salary)

avgx <- function(sals) {
  sal_avg <- c()
  #print(sals)
  for (x in sals){
    if (!is.na(x)){
      sal_avg <- append(sal_avg, x)
    } 
  }
  #print(sal_avg)     uncomment this to view filtered salaries removing NA values]
  return(mean(sal_avg))
}

r <- range(s$X)

sal <- c(0)
for (x in r[1]:r[2]) {
  if((s[x,]$rank=="Prof")) {
    #sal[x] <- s[x,]$salary
    #print(s[x,]$rank)
    append(sal, sal[x] <- s[x,]$salary, after=1)
  }
}

sal2 <- c(0)
for (x in r[1]:r[2]) {
  if((s[x,]$rank=="AssocProf")) {
    #sal[x] <- s[x,]$salary
    #print(s[x,]$rank)
    append(sal2, sal2[x] <- s[x,]$salary, after=1)
  }
}

sal3 <- c()
for (x in r[1]:r[2]) {
  if((s[x,]$rank=="Prof") & (s[x,]$sex=="Female")) {
    #sal[x] <- s[x,]$salary
    #print(s[x,]$rank)
    append(sal3, sal3[x] <- s[x,]$salary, after=1)
  }
}


sal4 <- c()
for (x in r[1]:r[2]) {
  if((s[x,]$rank=="AssocProf") & (s[x,]$sex=="Female")) {
    #sal[x] <- s[x,]$salary
    #print(s[x,]$rank)
    append(sal4, sal4[x] <- s[x,]$salary, after=1)
  }
}
sprintf("Average sal of Male professor(s): %s", avgx(sal))
sprintf("Average sal of Male Associate professor(s): %s", avgx(sal2))
sprintf("Average sal of Female professor(s): %s", avgx(sal3))
sprintf("Average sal of Female Associate professor(s): %s", avgx(sal4))




