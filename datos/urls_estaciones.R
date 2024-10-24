# URLs de los archivos
urls <- c("https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/metadatos_completos.csv",
          "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0472.csv",
          "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0910.csv",
          "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0046.csv",
          "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0098.csv",
          "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0437.csv")

# Nombres adecuados para los archivos en la carpeta datos
file_names <- c("datos/metadatos_completos.csv",
                "datos/estacion_NH0472.csv",
                "datos/estacion_NH0910.csv",
                "datos/estacion_NH0046.csv",
                "datos/estacion_NH0098.csv",
                "datos/estacion_NH0437.csv")

# Descargar los archivos
for (i in seq_along(urls)) {
  download.file(urls[i], file_names[i])
}
library(readr)

# Leer los archivos
metadatos <- read_csv("datos/metadatos_completos.csv")
estacion_NH0472 <- read_csv("datos/estacion_NH0472.csv")
estacion_NH0910 <- read_csv("datos/estacion_NH0910.csv")
estacion_NH0046 <- read_csv("datos/estacion_NH0046.csv")
estacion_NH0098 <- read_csv("datos/estacion_NH0098.csv")
estacion_NH0437 <- read_csv("datos/estacion_NH0437.csv")
