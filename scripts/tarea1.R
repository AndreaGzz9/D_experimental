#Andrea Gonzalez Bañuelas
#1946191

pinus<-3140
mezquite<-1453
encinos<-450
teka<-1200
juniperos<-720

superficie <-c(pinus, mezquite, encinos, teka, juniperos)
barplot(superficie,
        col="orange",
        xlab= "especies",
        ylab="superficie reforestada",
        ylim=c(0,400),
        names.arg=c("pinus", "mezquite","encinos",
                    "teka", "juniperos"))

mean(superficie)


germinacion <- c(4, 1, 6, 2, 4,
                  2, 4, 2, 4, 6, 3,
                  5, 3, 2, 5, 4, 0,
                  5, 4, 2, 4, 5, 3,
                  5, 3, 5, 4, 3, 6, 2)

mean(germinacion)

#desviacion stdr

sd(germinacion)

#altura

altura <- c( 38, 14, 44, 11,
              9, 21, 39, 28,
              41, 4, 35, 24,
              36, 12, 20, 31,
              24, 25, 10, 21,
              11, 36, 37, 20,
              26)

mean(altura)

sd(altura)
