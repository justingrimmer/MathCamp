##This code is for Lecture 6


det.examp<- matrix(NA, nrow = 2, ncol = 2) 

det.examp[1,]<- c(1, 2) 
det.examp[2,]<- c(3, 4)

store<- matrix(NA, nrow = 3, ncol = 3)
store[1,]<- c(2, 1, -1)
store[2,]<- c(-1, 4, -1)
store[3,]<- c(-1, 1, 2)


det.examp<- matrix(NA, nrow = 10, ncol=10)

for(z in 1:10){
	for(k in 1:10){
		det.examp[z,k]<- rnorm(1, mean = 0, sd = 1)
		}
	}
	
sing.mat<- matrix(NA, nrow = 3, ncol=3)
sing.mat[1,]<- c(1, 1, 1)
sing.mat[2,]<- c(2, 4, 5)
sing.mat[3,]<- c(4, 4, 4)

det(sing.mat)
solve(sing.mat)




####Creating the plots for the implicit function component of the lecture


xx<-seq(-1, 1, len = 1000)
y1<- sqrt((1 - xx^2))
y2<- -sqrt((1- xx^2))
ys<- c(y1, y2); xs<- c(xx, xx)
plot(ys~xs, type ='l', xlab = 'X', ylab = 'Y', lwd = 3)
arrows(-5, 0, 5, 0, len = 0, lwd = 3)
arrows(0, -5, 0, 5, len = 0, lwd = 3)
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass8/Implicit1.pdf', height = 6, width = 6)
dev.off()


util<- function(t, y, y.bar){
	out<- y*(1- t^2) + t*y.bar
	return(out)
	}
	
t<- seq(0.001, 0.999, len =1000)
y<- 20

plot(util(t, y)~t		)
abline(v = 1/20)


y.bar<- 10

y<- 10

plot(I(20*(1 - t^2) + y.bar*t)~t)	


indif<- function(t, a, y.bar){
	top<- -y.bar*t
	bottom<- 1- t^2
	out<- top/bottom - a
	return(out)
	}

util(t, indif(t, a, y.bar), y.bar)
	
plot(indif(t, 5, y.bar)~t)


t<- seq(0.1, 0.9, len=1000)

util(t, indif(t, 10, y.bar), y.bar)

	
	