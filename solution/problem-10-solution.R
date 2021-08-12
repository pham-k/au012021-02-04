library(deSolve)

seir <- function(time, state, parameters) {
  with(as.list(c(state, parameters)), {
    dS <- -beta * S * I
    dE <- beta * S * I - alpha * E
    dI <- alpha * E - gamma * I
    dR <- gamma * I
    
    return(list(c(dS, dE, dI, dR)))
  })
}

init <- c(S = 1-1e-6, E= 0.0 , I = 1e-6, R = 0.0)
parameters <- c(beta = 1.8, alpha = 0.9, gamma = 0.3)
times <- seq(0, 70, by = 1)
out <- as.data.frame(ode(y = init, times = times, func = seir, parms = parameters))
out$time <- NULL

matplot(
  times,
  out,
  type = "l",
  xlab = "Time",
  ylab = "Susceptibles and Recovereds", 
  main = "SIR Model", 
  lwd = 1,
  lty = 1, 
  bty = "l", 
  col = 2:4
  )
legend(40, 0.7, c("Susceptibles", "Exposed", "Infecteds", "Recovereds"), pch = 1, col = 2:4)
