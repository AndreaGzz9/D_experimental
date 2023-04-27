# Andrea Gonzalez
# fCF
#1946191

setwd("C:/REPOSITORIO_GIT/D_experimental/scripts/")

plantulas <- read.csv("bd1_vivero.csv", header = TRUE)
plantulas$Tratamiento <- as.factor(plantulas$Tratamiento)

# Revisar datos
shapiro.test(plantulas$IE)

bartlett.test(plantulas$IE ~ plantulas$Tratamiento)

# t-test-independiente ----------------------------------------------------
t.test(plantulas$IE ~ plantulas$Tratamiento, var.equal=T)

# t_test one sample -------------------------------------------------------
mean(plantulas$IE)
t.test(plantulas$IE, mu = 0.90)
t.test(plantulas$IE, mu =0.85)
