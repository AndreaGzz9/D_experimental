#Andrea Gzz
#02/03/23

#laboratorio 3


#importar datos
prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url)

#acortar url
prof_url <-"http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
prof_url2 <-paste0("http://www.profepa.gob.mx/innovaportal/", 
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
conjuntoEspecie <-as.factor(conjunto$Especie)
conjunto$Clase<-as.factor(conjunto$Clase)

boxplot(conjunto$Diametro ~ conjunto$Especie,
        col="lightpurple", 
        xlab="ESPECIE",
        ylab="DIAMETRO",
        main="BOSQUE)
        




