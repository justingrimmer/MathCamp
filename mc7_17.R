##our basic problem: estimate the parameters of the mean and variance of the normal distribution


##generating our data:

y<- rnorm(1000, mean = 10, sd = sqrt(9))



######Multivariate Newton-Raphson
##to do the multivariate optimization we will need the jacobian and the hessian

jacob.func<- function(mu, sigma.2){
	part1<- sum( (y - mu))
	part2<- sigma.2
	out1<- part1/part2
	
	out2 <- - len(y)/(2*sigma.2)  + 1/(2*sigma.2^2) * sum( (y- mu)^2)
	jacob<- c(out1, out2)
	return(jacob)
	}
	
hes.func<- function(mu, sigma.2){
	c1<- -len(y)/(sigma.2)
	c2<- - (sigma.2^2)*sum(y - mu)
	c3<- (sigma.2*len(y) - 2*sum( (y-mu)^2))/sigma.2^3
	hes.mat<- matrix(NA, nrow=2, ncol=2)
	hes.mat[1,1]<- c1
	hes.mat[2,2]<- c3
	hes.mat[1,2]<-hes.mat[2,1]<-  c2
	return(hes.mat)
	}
	
	ff<- mean(y)
	gg<- (1/len(y))*( sum((y - mean(y))^2))
	
	newt.update<- function(y, mu.0, sigma.2.0, tol){
		change<- 10
		a<- 0 
		test<- 0
		while(test==0){
			a<- a + 1	
			if(a>1){		
			sigma.2.0<- sigma.2.new
			mu.0<- mu.new}
			out<- c(mu.0, sigma.2.0) - solve(hes.func(mu.0, sigma.2.0))%*%jacob.func(mu.0, sigma.2.0)
			mu.new<- out[1]
			sigma.2.new<- out[2]
			if(a>1){
					change<- sum(abs(c(mu.new - mu.0, sigma.2.new - sigma.2.0)))
					}

			if(change<tol){
				test<- 1}
			if(a%%1000==0){
				print(change)
				}
			
			}
			return(c(mu.new, sigma.2.new))
			}
			
y<- rnorm(1000, mean = 10, sd = 10)	

mu.0<- mean(y)  - 1 
sigma.2.0<- var(y) - 1e-3
newt.update(y, mu.0, sigma.2.0, 1e-4)		
		
		
##but the multivariate newton raphson is extremely sensitive to starting values
##and computationally expensive---the most expensive step being the calculation of the inverse



log.like<- function(par, y){
	mu<- par[1]
	sigma.2<- par[2]
	part1<- - (1/(2*sigma.2))*sum( (y - mu)^2) 
	part2<- - (len(y)/2) * log(sigma.2) 		
	out<- part1 + part2
	print(out)
	return(out)
	}
	
guess<- c(3, 4)	

est<- optim(guess, log.like, control=list(trace=100, fnscale=-1), method = 'BFGS', y = y, hessian=T)
	
		
		
		
	
	