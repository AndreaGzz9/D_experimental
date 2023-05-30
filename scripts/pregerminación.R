#Andrea Gzz
#1946191

#importar
setwd("C:/REPOSITORIO_GIT/D_experimental/Scripts/")
germ<- read.csv("pregerminado.csv")
germ$TRATAMIENTO <- as.factor(germ$TRATAMIENTO)

#grafica

boxplot(germ$PG ~ germ$TRATAMIENTO, 
        col="purple",
        xlab="TRATAMIENTO GERMINATIVO",
        ylab=" % GERMINACION")

#ordenar tratamientos

levels(germ$TRATAMIENTO)
germ$TRATAMIENTO <- factor(germ$TRATAMIENTO, levels =c("control", "Em", "AgAm", "AgCal", "H?SO?"))
levels(germ$TRATAMIENTO)
tapply(germ$PG, germ$TRATAMIENTO, mean)http://127.0.0.1:36611/graphics/plot_zoom_png?width=1200&height=886
tapply(germ$PG, germ$TRATAMIENTO, var)

# ANOVA
germ.aov <- aov(germ$PG ~ germ$TRATAMIENTO)
summary(germ.aov)

# Tuckey
# compara tratamientos para ver diferencias
TukeyHSD(germ.aov, conf.level = 0.95)

##diferencia de 4% entre Em y Ctrl, Si hay diferencias
##diferencias de 5% entre AgAm y Ctrl, Si hay diferencias
##diferenciad de 3.5% entre AgCal y Ctrl, Si hay diferencias

plot(TukeyHSD(germ.aov), las =1, col="pink")

#letras de diferencias

boxplot(germ$PG ~ germ$TRATAMIENTO, 
        col="orange",
        xlab="TRATAMIENTO GERMINATIVO",
        ylab=" % GERMINACION",
        ylim=c(0,10))

text(1,4.2, "a", col="red")
text(2,8.3,"b", col="blue")
text(3,9.4,"b", col="blue")
text(4,7.4,"b", col="blue")
text(5,3.3,"a", col="red")



