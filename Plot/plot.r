
# Caterpillow of Variable
par(mfrow = c(2, 2))
plot(c(1:10000),store[2,],type = "l",xlab="iteration",ylab="Variable 2",main="Caterpillow plot of Gibbs")
xyplot(mcmc(re.hmc1[,2]),ylab="Variable 2",main="Caterpillow plot of HMC")
plot(c(1:10000),store[40,],type = "l",xlab="iteration",ylab="Variable 40",main="Caterpillow plot of Gibbs")
xyplot(mcmc(re.hmc1[,40]),ylab="Variable 40",main="Caterpillow plot of HMC")

# Traceplot
par(mfrow = c(1, 2))
plot(store[2,],store[40,],type="l",,main="Trace plot in Gibbs",xlab = "Variable 2",ylab = "Variable 40")
plot(re.hmc1[,2],re.hmc1[,40],type="l",main="Trace plot in HMC",xlab = "Variable 2",ylab = "Variable 40")

#ACF
par(mfrow = c(1, 2))
acf(re.hmc1[,40])
acf(store[40,])

#Histogram
par(mfrow = c(2, 2))
histogram(store[2,],xlab = "Variable 2",main = "Histogram of variable 2 in Gibbs")
histogram(store[40,],xlab = "Variable 40",main = "Histogram of variable 40 in Gibbs")
histogram(re.hmc1[,2],xlab = "Variable 2",main = "Histogram of variable 2 in HMC")
histogram(re.hmc1[,40],xlab = "Variable 40",main = "Histogram of variable 40 in HMC")