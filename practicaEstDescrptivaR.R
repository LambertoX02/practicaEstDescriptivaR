nuevo_dir <- "C:/Ejercicios/practicaEstDescriptivaR"
setwd(nuevo_dir)

if (file.exists(nuevo_dir)) {
  cat("Directorio creado correctamente: ", nuevo_dir, "\n")
} else {
  cat("Fallo al crear directorio: ", nuevo_dir, "\n")
}

#1
vector_x  <- c(1,2,3,4,5)
vector_y <- c(9.1, 2.4, 7.5, 1.3, 3.4)

"Un vector es una consecuencia de elementos del mismo tipo, sin embargo en una lista la consecuencia puede ser de distintos tipos."
"La misma, una secuencia de 5 números cada una. Sin embargo el vector_y contiene décimas"
"Integer son datos que almacenan números enteros (vector_x), mientras que double puede almacenar decimales (vector_y)."
"El cálculo de un vector double da la capacidad de generar cálculos más precisos con decimales. Es decir, gasta mas memoria computacional"

#2
suma <- vector_x+vector_y
resta <- vector_x-vector_y
multiplicación <- vector_x*vector_y
división <- vector_x/vector_y
elevar <- vector_x^vector_y

#3
cuadrado <- vector_y^2

#4
diez <- vector_y*10

#5
suma2 <- vector_y+25

#6
máximo <- max(vector_y)

#7
mínimo <- min(vector_y)

#8
absoluto <- abs(vector_y)

#9
raiz <- sqrt(vector_y)

#10
suma3 <- sum(vector_y)

#11
list <- list(c(vector_x, vector_y))
print(list)
typeof(list)
str(list)
View(list)

"Tienen una longitud de 10 cifras. Y se usa el tipo de dato double, ya que vemos decimales en todos los números"
"Se aplica la transformación a double ya que los números enteros se adaptan a los que tienen decimales, siendo una lista homogenea. De lo contrario, si fuera integer, se redondearía a números enteros y el vector_y perdería información."

#12
is.na(list)

#13
vector_z <- c(29, NA, 12, 46, 73)

#14
mean(vector_z)

"Arroja -NA-, ya que hacer la media de un vector con una secuencia de números no completa nos da este resultado."

mean(vector_z, na.rm = TRUE)

#15
matriz <- matrix(c(24,69,3,90,23,56,1,63,87,21,77,19),
                 nrow = 4, ncol = 3)
print(matriz)

"Se rellenan por columnas por defecto"

#16
matriz_filas <- matrix(c(24,69,3,90,23,56,1,63,87,21,77,19),
                       nrow = 4, ncol = 3,
                       byrow = T)
print(matriz_filas)

#17
matriz_a <- matrix(c(1,2,3,4,5,6,7,8,9),
                   nrow = 3, ncol = 3)

matriz_b <- matrix(c(10,11,12,13,14,15,16,17,18),
                   nrow= 3, ncol = 3)

print(matriz_a)
print(matriz_b)

#18
suma_matriz <- matriz_a+matriz_b
resta_matriz <- matriz_a-matriz_b

"Obtenemos las tablas sumadas y restadas respectivamente por las cifras que coinciden en las mismas posiciones."

#19
matriz_t <- t(matriz)

#20
matriz_cons <- matriz*5

#21
matriz_mult <- matriz_a*matriz_b

#22
matriz_mult[2,3]
matriz_mult[2,]
matriz_mult[,3]

#ESTADÍSTICA DESCRIPTIVA

#1
set.seed(123)
num_cuentas <- round(rnorm(100, mean =50, sd =10))
print(num_cuentas)

#2
mean(num_cuentas)

#3
median(num_cuentas)

#4
mode <- function(num_cuentas) {
  return(as.numeric(names(which.max(table(num_cuentas)))))
}
mode(num_cuentas)

#5
range(num_cuentas)

#6
quantile(num_cuentas, 0.25)

#7
quantile(num_cuentas, 0.75)

#8
var(num_cuentas)

#9
sd(num_cuentas)

#10
hist(num_cuentas, col = "green")

#11
boxplot(num_cuentas,horizontal = TRUE, col = "blue")

#12
density(num_cuentas)
plot(density(num_cuentas))
lines(density(num_cuentas), col = "red")

#13
barplot(num_cuentas, xlab = "yacimientos", col = "yellow")

#14
tipo_artefacto <- c("Grande","Mediano","Pequeño")
material <- c("Grande","Mediano","Pequeño")
periodo_cultural <- c("Prehistoria","Clásico","Medieval")
estado_conservación <- c("Bueno","Neutro","Malo")
ubicación <- c("Segovia","Lugo","Cáceres")

set.seed(123)
muestra_tipo_artefacto <- sample(tipo_artefacto, 10, replace = TRUE)
muestra_material <- sample(material, 10, replace = TRUE)
muestra_periodo_cultural <- sample(periodo_cultural, 10, replace = TRUE)
muestra_estado_conservación <- sample(estado_conservación, 10, replace = TRUE)
muestra_ubicación <- sample(ubicación, 10, replace = TRUE)

tabla_freq_tip_art <- table(muestra_tipo_artefacto)
tabla_freq_mat <- table(muestra_material)
tabla_freq_per_cul <- table(muestra_periodo_cultural)
tabla_freq_est_con <- table(estado_conservación)
tabla_freq_ubi <- table(muestra_ubicación)

print(tabla_freq_tip_art)
print(tabla_freq_mat)
print(tabla_freq_per_cul)
print(tabla_freq_est_con)
print(tabla_freq_ubi)