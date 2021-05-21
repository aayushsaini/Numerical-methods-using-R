#Assignment 3

#1
a <- c(60:85)
a

#2
a[12]

#3
a[20]

#4
a[c(5,25)]

#5
a[c(4,8,12,16,20,24)]

#6
a[-(8)]

#7
a[-c(2,15,17)]

#8
n=10
a[1:n]
a[1:(n-1)]
a[1:n-1]
print("Yes, there's Difference")
#===========#
#Explanation: 
#===========#
#In a[1:(n-1)] n-1 is executed first then 1:n (where n=n-1)is executed
#Whereas in a[1:n-1], the 1:n is executed first then the resultant vector is reduced by 1


#9
c1 <- seq(33, 47)
c2 <- seq(115, 157, by=3)
c3 <- seq(10, by=-8.5, length=15)
c3

#10
new_frame <- data.frame(c1,c2,c3)
new_frame

#11
new_frame[c(6:10),2]

#12
new_frame[11,]

#13
new_frame[c(4:8),c(1,3)]

#14
seq.int(nrow(new_frame))
