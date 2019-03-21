library(plyr)
library(dplyr)
bracket_generate()

sim <- function(n,i){results <-
  rdply(
    .n = n,
    .expr = bracket_generate(),
    .progress = "tk",
    .id =
  )
results <-
  `colnames<-`(results, c("Simulation Number", "Winning Team"))



print(paste(
  tail(names(sort(
    table(results$`Winning Team`)
  )), n = i),
  "has won the most out of all simulations"
))
}
sim(100000,1)
