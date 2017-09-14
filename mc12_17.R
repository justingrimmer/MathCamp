##putting together an example with the t-distribution

##let's take samples from a normal distribution and show what the t-distribution from the test stastic


test.stat<- function(sims, n){
	
	store<- c()
	for(z in 1:sims){
		ee<- rnorm(n, mean = 0, sd = 0.1)
		ff<- mean(ee)
		gg<- var(ee)
		store[z]<- ff/(sqrt(gg/n))		}
	
	return(store)
	}


round1<- test.stat(1000, 2)
plot(density(round1))
round2<- test.stat(1000, 3)
plot(density(round2))
round3<- test.stat(1000,  100)
plot(density(round3))