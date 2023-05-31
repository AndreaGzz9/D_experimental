#funcion de de 
vivero<-read.csv("scripts/bd1_vivero.csv" , header = TRUE )

#CONVERTIR TRATAMIENTO A FACTOR

vivero$Tratamiento <-as.factor (vivero$Tratamiento)

summary(vivero)
sd(vivero$IE)
var(vivero$IE)

mean(vivero$IE)

