#Andrea Gzz
#02/03/23

conjuntos <- read.csv("scripts/tarea2_excel.csv",header = TRUE)


#MEDIA DE ALTURA
mean(conjuntos$ALTURA)
H.media <- subset(conjuntos, conjuntos$ALTURA <= 13.92)
H.16 <- subset(conjuntos, conjuntos$ALTURA < 16.5)

#VECINOS
Vecinos_3 <- subset(conjuntos, conjuntos$VECINOS >=3)
Vecinos_4 <- subset(conjuntos, conjuntos$VECINOS <=4)

#DIAMETRO
mean(conjuntos$DIAMETRO)
DBH_media <-subset(conjuntos, conjuntos$DIAMETRO <15.79)
DBH_16 <-subset(conjuntos, conjuntos$DIAMETRO <16)

#ESPECIE
conjuntos$ESPECIE <- as.factor(conjuntos$ESPECIE)
cedro <-subset(conjuntos, conjuntos$DIAMETRO == "C")
THyDV <-subset(conjuntos, conjuntos$DIAMETRO == "F")

#OBSERVACIONES
sum(conjuntos$DIAMETRO >16.9)
sum(conjuntos$ALTURA <18.5)

#HISTOGRAMAS
head(conjuntos$ALTURA)
hist(conjuntos$ALTURA,
     main="altura de especies",
     xlab = "ALTURA",
     ylab = "FRECUENCIAS",
     col = "pink")

feeds <- table(conjuntos$ALTURA)
feeds
barplot(feeds)

hist(H.media$ALTURA)
hist(H.16$ALTURA)

#VECINOS
hist(conjuntos$VECINOS,
     main="DIAMETRO",
     col="pink")

hist(Vecinos_3$VECINOS)
hist(Vecinos_4$VECINOS)

#DIAMETRO
hist(DBH_16$DIAMETRO,
     main = "DIAMETRO",
     col = "purple")

hist(DBH_16$DIAMETRO)
hist(DBH_media$DIAMETRO)

#ALTURA
mean(conjuntos$ALTURA)
sd(conjuntos$ALTURA)

mean(H.media$ALTURA)
sd(H.media$Altura)

mean(H.16$ALTURA)
sd(H.16$ALTURA)

mean(conjuntos$VECINOS)
sd(conjuntos$VECINOS)

mean(Vecinos_3$VECINOS)
sd(Vecinos_3$VECINOS)

mean(Vecinos_4$VECINOS)
sd(Vecinos_4$VECINOS)

mean(conjuntos$DIAMETRO)
sd(conjuntos$DIAMETRO)

mean(DBH_16$DIAMETRO)
sd(DBH_16$DIAMETRO)

mean(DBH_media$DIAMETRO)
sd(DBH_media$DIAMETRO)





