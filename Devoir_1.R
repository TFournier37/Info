library(tidyverse)
donnees <- read.csv("insurance.csv")
donnees_filtrees <- donnees %>% filter(charges<50000)
