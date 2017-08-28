###R code for Math Camp Lecture 1
###Justin Grimmer
###


###Using R like a calculator
1 + 1
2 + 1
2/3
3*pi


###in R we can create objects and then access them
example_object<- 2

example_object

###we can also use R to define a function

first.func<- function(x){
	out<- 2*x
	return(out)}

first.func(2)


###putting together a function to sum numbers


sum.func<- function(n){
	return(sum(1:n))
	}

##compare that to our hypothesis

sum.seq<- function(n){
	return( (n*(n + 1))/2)
	}







####creating the plots from class



x<- seq(-2, 2, len=100)

seq.sub<- c(-2, -1.5, -1, -0.5, 0.5, 1, 1.5, 2)


plot(x~I(1*x), xlab='x', ylab='f(x)', main='f(x) = x', pch='', axes=F, frame.plot=F)
arrows(-10, 0, 10, 0, len=0, col=gray(0.5))
abline(v=0, col=gray(0.5))
for(z in 1:len(seq.sub)){
	arrows(seq.sub[z], -0.1, seq.sub[z], 0.1, len=0, col=gray(0.5))
	text(seq.sub[z], -0.2, label=as.character(seq.sub[z]), col=gray(0.5))

	arrows(-0.1, seq.sub[z], 0.1, seq.sub[z], len=0, col=gray(0.5))
	text(-0.2,seq.sub[z], label=as.character(seq.sub[z]), col=gray(0.5))

	}

points(x~I(1*x), type='l', lwd=2)
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass1/f1.pdf', height=6, width=6)
dev.off()


plot(I(x^2)~I(x), xlab='x', ylab='f(x)', main='f(x) = x^2', pch='', axes=F, frame.plot=F, ylim=c(-2, 2), xlim=c(-2,2))
arrows(-10, 0, 10, 0, len=0, col=gray(0.5))
abline(v=0, col=gray(0.5))
for(z in 1:len(seq.sub)){
	arrows(seq.sub[z], -0.1, seq.sub[z], 0.1, len=0, col=gray(0.5))
	text(seq.sub[z], -0.2, label=as.character(seq.sub[z]), col=gray(0.5))

	arrows(-0.1, seq.sub[z], 0.1, seq.sub[z], len=0, col=gray(0.5))
	text(-0.2,seq.sub[z], label=as.character(seq.sub[z]), col=gray(0.5))

	}

points(I(x^2)~I(x), type='l', lwd=2)
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass1/f2.pdf', height=6, width=6)
dev.off()



plot(I(sin(x*2))~I(x), xlab='x', ylab='f(x)', main='f(x) = sin(2*x)', pch='', axes=F, frame.plot=F, ylim=c(-2, 2), xlim=c(-2,2))
arrows(-10, 0, 10, 0, len=0, col=gray(0.5))
abline(v=0, col=gray(0.5))
for(z in 1:len(seq.sub)){
	arrows(seq.sub[z], -0.1, seq.sub[z], 0.1, len=0, col=gray(0.5))
	text(seq.sub[z], -0.2, label=as.character(seq.sub[z]), col=gray(0.5))

	arrows(-0.1, seq.sub[z], 0.1, seq.sub[z], len=0, col=gray(0.5))
	text(-0.2,seq.sub[z], label=as.character(seq.sub[z]), col=gray(0.5))

	}

points(I(sin(x*2))~I(x), type='l', lwd=2)
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass1/f3.pdf', height=6, width=6)
dev.off()




plot(I(tanh(x))~I(x), xlab='x', ylab='f(x)', main='f(x) = tanh(x)', pch='', axes=F, frame.plot=F, ylim=c(-2, 2), xlim=c(-2,2))
arrows(-10, 0, 10, 0, len=0, col=gray(0.5))
abline(v=0, col=gray(0.5))
for(z in 1:len(seq.sub)){
	arrows(seq.sub[z], -0.1, seq.sub[z], 0.1, len=0, col=gray(0.5))
	text(seq.sub[z], -0.2, label=as.character(seq.sub[z]), col=gray(0.5))

	arrows(-0.1, seq.sub[z], 0.1, seq.sub[z], len=0, col=gray(0.5))
	text(-0.2,seq.sub[z], label=as.character(seq.sub[z]), col=gray(0.5))

	}

points(I(tanh(x))~I(x), type='l', lwd=2)
dev.copy(device=pdf, file='~/dropbox/teaching/pol350a/mclass1/f4.pdf', height=6, width=6)
dev.off()








