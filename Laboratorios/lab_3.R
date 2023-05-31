#Andrea Gzz
#02/03/23

#laboratorio 3


#importar datos
prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url)

#acortar url
prof_url <-"http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
prof_url <-paste0("http://www.profepa.gob.mx/innovaportal/", 
                   "file/7635/1/accionesInspeccionfoanp.csv")


summary(profepa)
#restricciones
profepa$Operativo == max(profepa$Operativo)
max.oper <-subset(profepa, profepa$Operativo == 24)
max.oper <-subset(profepa, profepa$Operativo == 2)

#revisar datos
boxplot(profepa$Operativo)

boxplot(profepa$Recorrido)

prof.soc <-subset(profepa, profepa$Operativo != max(profepa$Operativo))

boxplot(prof.soc$Operativo)

#dropbox
3#INSTALAR LIBRERIA
library (repmis)

conjunto <-source_data ("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
boxplot(conjunto$Diametro)

##diametro de especie
##cambiar la especie a factor

conjunto$Especie <- as.factor(conjunto$Especie)
conjunto$Clase <- as.factor(conjunto$Clase)

boxplot(conjunto$Diametro ~ conjunto$Especie ,
        col="purple", 
        xlab="ESPECIE",
        ylab="DIAMETRO",
        main="BOSQUE")
        
boxplot(conjunto$Altura ~ conjunto$Especie ,
        col= "purple" ,
        xlab= "ESPECIE",
        ylab= "ALTURA",
        main= "BOSQUE")

#transferir datos
head(conjunto)
library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/202_Analisis_Estadistico_2020/master/cuadro1.csv")
  inventario <- read_csv(file)


#operaciones con la base de datos
raw_url <-"https://raw.githubusercontent.com/AndreaGzz9/D_experimental/main/scripts/cuadro1.csv"

mean(inventario$Diametro)
sum(inventario$Diametro < 10)
which(inventario$Diametro < 10)


inventario.13 <-inventario[!(inventario$Especie== "I"),]
inventario.13
inventario.1 <- subset(inventario,Diametro <= 10)
head(inventario.1)

mean(inventario$Diametro)
mean(inventario.1$Diametro)


#PARTE 3
mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")
hist(mamiferos$total_sleep, 
     xlim = c(0,20),
     ylim = c(0,14),
     main = "total de horas de sueño de las 39 especies",
     xlab = "horas sueño",
     ylab = "Frecuencia",
     las = 1, 
     col = "#996600")

data("chickwts")
head(chickwts[c(1:2,42:43, 62:64), ])
feeds<- table(chickwts$feed) 
barplot(feeds)
barplot(feeds[order(feeds, decreasing = TRUE)])
