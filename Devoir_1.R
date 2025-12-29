library(ggplot2)
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
x_test <- x[-ind_rep,]
y_train <- y[ind_rep,]
y_test <- y[-ind_rep,]
summarise(y,min=min(y),
          max=max(y),
          moyenne=mean(y$charges),
          mediane=median(y$charges),
          variance=var(y)
          )
ggplot(donnees_filtrees, aes(x = charges)) +
  geom_boxplot() +
  labs(
    title = "Diagramme à moustaches",
    x = "Charges"
  ) 
ggplot(donnees_filtrees, aes(x = charges)) +
  geom_histogram() +
  labs(
    title = "Historigrame"+  
    x = "Charges"
  ) 
ggplot(donnees_filtrees, aes(x = bmi, y = charges)) +
  geom_point() +
  labs(
    title = "Charges en fonction du BMI",
    x = "BMI",
    y = "Charges"
  )
ggplot(donnees_filtrees, aes(x = age, y = charges)) +
  geom_point() +
  labs(
    title = "Charges en fonction de l'age",
    x = "age",
    y = "Charges"
  )

model <- glm(charges~age+sex+bmi+children+smoker+region,family= poisson,donnees_filtrees)
summary(model)
