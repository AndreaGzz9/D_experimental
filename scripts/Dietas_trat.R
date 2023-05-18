#Andrea Gzz
#1946191
#evaluar 5 dietas en individuos de 4 pesos diferentes

dieta1 <-c(2.2, 2.4, 3.4, 1.6)
dieta2 <-c(2.2, 1.9, 1.7, 2.1)
dieta3 <-c(3.3, 1.3, 2.8, 2.1)
dieta4 <-c(1.6, 2.5, 1.4, 2.4)

GP<- c(2.4, 2.2, 3.4, 1.6, 2.2, 1.9, 1.7, 2.1,
       3.3, 1.3, 2.8, 2.1, 1.6, 2.5, 1.4, 2.4)

trat <-gl(4,4,16, labels = c("dieta1","dieta2","dieta3",
                             "dieta4"))

bloques <-gl(4,4,16, labels = c("bajo","normal","sobrepeso
                               ","obesidad"))
DIETAS <- data.frame(trat,GP)

boxplot(DIETAS$GP ~ DIETAS$trat,
        col="purple",
        xlab="DIETAS",
        ylab="trat")

#analisis de varianza

##ganancia de peso en tratamientos
tapply(DIETAS$GP, DIETAS$trat, sum)

tapply(DIETAS$GP, DIETAS$trat, var)

##hay diferencias en la dieta2 a la dieta4, prueba de analisis

fligner.test(DIETAS$GP, DIETAS$trat)
bartlett.test(DIETAS$GP, DIETAS$trat)

diet.aov <- aov(DIETAS$GP ~ DIETAS$trat)
summary(diet.aov)

write.table(DIETAS,"c:/REPOSITORIO_GIT/D_experimental
/scripts/DIETAS, sep = ","")

