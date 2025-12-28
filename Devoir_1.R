library(tidyverse)
donnees <- read.csv("insurance.csv")
donnees_filtrees <- donnees %>% 
  filter(charges<50000) %>% 
  filter (bmi<45) 
n <- nrow(donnees_filtrees)
ind_rep <- sample (1:n,floor(.8*n))
x <- donnees_filtrees %>% select(-charges)
y <- donnees_filtrees %>% select(charges)
x_train <- x[ind_rep,]
