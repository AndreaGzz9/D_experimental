#Andrea Gzz
#21/03/2023

#PROBLEMA 1
sum4(yo = 1) = xi

#PROBLEMA 2
# #la media del grupo A será mayor porque los datos son mas homogeneos

grupo_A <- c(80, 90, 90, 100)
mean(grupo_A)

grupo_B <- c(60, 65, 65, 70, 70, 70, 75, 75, 80, 80, 80, 80, 80, 85, 100)
mean(grupo_B)

#PROBLEMA 3
valoraciones <-c( 87,72, 85)
signif(valoraciones)
## se necesita un 79 para obtener un promedio de 80


#PROBLEMA 4
## La mitad de los hogares de la ciudad tienen más de 2 hijos.

#PROBLEMA 5
Germinados <- read.csv("scripts/Germinado.csv" , header = TRUE )
##Un histograma

##media
mean(Germinados$Germinaciones)
mean(Germinados$petri)

##mediana
median(Germinados$Germinaciones)
median(Germinados$petri)

#PROBLEMA 6
conjunto <- c(2, 2, 3, 6, 10)
signif (conjunto)
median(conjunto)

#getmode 
getmoda<- function (v) {
  uniqv <- unique(v) 
  uniqv [which.max (tabulate (match( v, uniqv )))]
}

#PROBLEMA 7

##media 7
conjunto_1 <-c(13, 7, 7, 3 ,5)
mean(conjunto_1)
median(conjunto_1)

conjunto_2 <-c(9, 7, 7, 7, 4)
mean(conjunto_2)
median(conjunto_2)


