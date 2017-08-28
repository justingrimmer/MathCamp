##sequence examples



seq.1<- 1:1000



seq.e1<- 1/seq.1


seq.e2<- 1/(seq.1^2)


seq.e3<- ( 1+ (-1)^seq.1)/2



plot(seq.e1~seq.1, xlab='Integers', ylab='Sequence', xlim=c(0,100),pch=20, col='cornflowerblue', ylim=c(-1.5, 1.5))
abline(h=0)
title(main='f(n) = 1/n')
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Seq1.pdf', height=4.5, width=6)
dev.off()




plot(seq.e2~seq.1, xlab='Integers', ylab='Sequence', xlim=c(0,100),pch=20, col='cornflowerblue', ylim=c(-1.5, 1.5))
abline(h=0)
title(main='f(n) = 1/(n^2)')
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Seq2.pdf', height=4.5, width=6)
dev.off()




plot(seq.e3~seq.1, xlab='Integers', ylab='Sequence', xlim=c(0,100),pch=20, col='cornflowerblue')
#abline(h=0)
title(main='f(n) = ( 1 + (-1)^n)/2')
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Seq3.pdf', height=4.5, width=6)
dev.off()


seq.e4<- 5 + rnorm(1000)/seq.1
plot(seq.e4, xlab='Integers', ylab='Sequence', main='Function(data)', pch=20, col='cornflowerblue')
abline(h=5)
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Seq4.pdf', height=4.5, width=6)
dev.off()




seq.e5<- ( (-1)^(seq.1))/(seq.1)
plot(seq.e5, xlim =c(0,200), pch=20, xlab='Integers', ylab='Sequence', main='f(n) = [(-1)^n]/n', col='cornflowerblue' , ylim=c(-1, 1))
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Conv0.pdf', height=4.5, width=6)
dev.off()




seq.e5<- ( (-1)^(seq.1))/(seq.1)
plot(seq.e5, xlim =c(0,200), pch=20, xlab='Integers', ylab='Sequence', main='f(n) = [(-1)^n]/n', col='cornflowerblue' , ylim=c(-1, 1))
abline(h=0.5)
abline(h=-0.5)
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Conv1.pdf', height=4.5, width=6)
dev.off()




seq.e5<- ( (-1)^(seq.1))/(seq.1)
plot(seq.e5, xlim =c(0,200), pch=20, xlab='Integers', ylab='Sequence', main='f(n) = [(-1)^n]/n', col='cornflowerblue' , ylim=c(-1, 1))
abline(h=0.25)
abline(h=-0.25)
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Conv2.pdf', height=4.5, width=6)
dev.off()




seq.e5<- ( (-1)^(seq.1))/(seq.1)
plot(seq.e5, xlim =c(0,200), pch=20, xlab='Integers', ylab='Sequence', main='f(n) = [(-1)^n]/n', col='cornflowerblue' , ylim=c(-1, 1))
abline(h=0.05)
abline(h=-0.05)

dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Conv3.pdf', height=4.5, width=6)
dev.off()



seq.e5<- ( (-1)^(seq.1))/(seq.1)
plot(seq.e5, xlim =c(0,200), pch=20, xlab='Integers', ylab='Sequence', main='f(n) = [(-1)^n]/n', col='cornflowerblue' , ylim=c(-1, 1))
abline(h=0.001)
abline(h=-0.001)

dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Conv4.pdf', height=4.5, width=6)
dev.off()




##putting together the plots for the limit section.  
len<- length
seq1.x<- seq(-2, 2, len=1000)
seq.sub<- c(-2, -1.5, -1, -0.5, 0.5, 1, 1.5, 2)

sins<- sin(seq1.x)

plot(sins~seq1.x, xlab='x', ylab='f(x)', main='f(x) = sin(x)' , type='l', lwd=3)
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Limit0.pdf', height=4.5, width=6)
dev.off()

plot(sins~seq1.x, xlab='x', ylab='f(x)', main='f(x) = sin(x)' , type='l', lwd=3)
arrows(seq1.x[200], -10, seq1.x[200], sins[200], len=0, lwd=3)
arrows(seq1.x[800], -10, seq1.x[800], sins[800], len=0, lwd=3)
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Limit1.pdf', height=4.5, width=6)
dev.off()


plot(sins~seq1.x, xlab='x', ylab='f(x)', main='f(x) = sin(x)' , type='l', lwd=3)
arrows(seq1.x[400], -10, seq1.x[400], sins[400], len=0, lwd=3)
arrows(seq1.x[600], -10, seq1.x[600], sins[600], len=0, lwd=3)

dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Limit2.pdf', height=4.5, width=6)
dev.off()


plot(sins~seq1.x, xlab='x', ylab='f(x)', main='f(x) = sin(x)' , type='l', lwd=3)
arrows(seq1.x[450], -10, seq1.x[450], sins[450], len=0, lwd=3)
arrows(seq1.x[550], -10, seq1.x[550], sins[550], len=0, lwd=3)

dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Limit3.pdf', height=4.5, width=6)
dev.off()


plot(sins~seq1.x, xlab='x', ylab='f(x)', main='f(x) = sin(x)' , type='l', lwd=3)
arrows(seq1.x[490], -10, seq1.x[490], sins[490], len=0, lwd=3)
arrows(seq1.x[510], -10, seq1.x[510], sins[510], len=0, lwd=3)

dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Limit4.pdf', height=4.5, width=6)
dev.off()


plot(sins~seq1.x, xlab='x', ylab='f(x)', main='f(x) = sin(x)' , type='l', lwd=3)
arrows(seq1.x[495], -10, seq1.x[495], sins[495], len=0, lwd=3)
arrows(seq1.x[505], -10, seq1.x[505], sins[505], len=0, lwd=3)

dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Limit5.pdf', height=4.5, width=6)
dev.off()


plot(sins~seq1.x, xlab='x', ylab='f(x)', main='f(x) = sin(x)' , type='l', lwd=3)
arrows(seq1.x[500], -10, seq1.x[500], sins[500], len=0, lwd=3)
arrows(seq1.x[501], -10, seq1.x[501], sins[501], len=0, lwd=3)

dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Limit6.pdf', height=4.5, width=6)
dev.off()


x<- seq(-3, 3, len=100)
ee<- function(x){
	p1<- x^2 - 1
	p2<- x - 1
	out<- p1/p2
	return(out)
	}
	
plot(ee(x)~x, type='l', lwd=3, xlab='x', ylab='f(x)', main='f(x) = (x^2 - 1)/(x - 1)')

dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Limit_hole.pdf', height=4.5, width=6)
dev.off()	
	
plot(ee(x)~x, type='l', lwd=3, xlab='x', ylab='f(x)', main='f(x) = (x^2 - 1)/(x - 1)')
abline(h=2)
abline(v=1)	
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Limit_hole2.pdf', height=4.5, width=6)
dev.off()	



seq.3<- seq(0.001, 1, len=1000)

plot(I(1/seq.3)~seq.3, xlab='x', ylab='f(x)', main='f(x) = 1/x', type='l')
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Limit_hole3.pdf', height=4.5, width=6)
dev.off()


abline(v=0)




seq5<- seq(-2, 2, len=1000)


plot(I(abs(seq5))~seq5, xlab='x', ylab='f(x)', main='f(x) = |x|', type='l', lwd=3)
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Abs1.pdf', height=4.5, width=6)
dev.off()

seq6<- seq(-2*pi, 2*pi, len=1000)

plot(I(cos(seq6))~seq6, xlab='x', ylab='f(x)', main='f(x) = cos(x)', type='l', lwd=3)
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Abs2.pdf', height=4.5, width=6)
dev.off()



seq6<- seq(-2*pi, 2*pi, len=1000)

plot(I((seq6^2))~seq6, xlab='x', ylab='f(x)', main='f(x) = x^2', type='l', lwd=3)
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass2/Abs3.pdf', height=4.5, width=6)
dev.off()





