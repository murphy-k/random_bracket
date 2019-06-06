library(plyr)
library(dplyr)
library(ggplot2)

bracket_generate()

results <-
  rdply(
    .n = 10000,
    .expr = bracket_generate(),
    .progress = progress_time()
  )
results <-
  `colnames<-`(results, c("Simulation Number", "Winning Team"))

print(paste(tail(names(sort(
  table(results$`Winning Team`)
)), n = 5), "has won the most out of all simulations"))

ggplot(data = results, aes(x = results$`Winning Team`)) + geom_bar() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))
