#Codigo para problema 1

mis_dades <- mtcars
mis_dades
qsec<-mis_dades$qsec
sort(mis_dades$qsec)
qseq_intervalos<-cut(mis_dades$qsec,breaks=4)
qseq_intervalos
ni<-table(qseq_intervalos)
hist(mis_dades$qsec,breaks=2)
mean(mis_dades$qsec) #Mitjana aritmetica de qsec

drat<-mis_dades$drat
sort(drat)
median(drat)  #Mediana
quantile(drat) #Todos los quartiles
quantile(drat,0.25)  #El quartil que le pidamos en este caso el primero
mpg<-mis_dades$mpg
quantile(mpg,0.18) #Percentil

#TABLA DE FRECUENCIAS
sum(ni) #obtenemos la frecuencia absoluta total
freqrela<-ni/sum(ni)
freqrela #obtenemos una serie de intervalos con unos porcentajes asociados, esto lo podemos representar en una grafica de pastel con pie()
pie(freqrela)
Ni<-cumsum(ni)#frequencia absoluta acomulada
FREQRELA<-cumsum(freqrela)#frequencia relativa acomulada
cbind(ni,freqrela,Ni,FREQRELA)

#El rango intercuartilico corresponde a restar el 3 rango menos el 1

cyl<-mis_dades$cyl
first<-quantile(cyl,0.25)
third<-quantile(cyl,0.75)
rangointercuartilico<-third-first
rangointercuartilico
IQR(cyl)
boxplot(cyl)

sd(cyl) #desviacion tipica
var(qsec) #varianza muestral (es el cuadrado de la desviaciont tipica)
