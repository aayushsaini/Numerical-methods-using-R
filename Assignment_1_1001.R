#Exercise:1 

#Q1
thames_len <- 346
severen_len <- 354

dif <- severen_len - thames_len

sprintf("River Severen is longer than River Thames by: %s", dif)
sprintf("River server is %s times longer than river thames", thames_len/severen_len)


#Q2

multiplier <- function(a,b) {
  return(a*b*pi)  
}

multiplier(12.8, 19.2)

#Q3
rm(list=ls())