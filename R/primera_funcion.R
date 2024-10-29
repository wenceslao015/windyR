#' Funcion de descarga de datos
#'
#' @param id_estacion
#' @param ruta_archivo
#'
#' @return
#' un archivo .csv con el id de la estación buscada
#' @examples
#' descarga_datos("NH0098", "C:/Users/Documentos/windyR/datos/estacion_NH0098")
#' descarga_datos("NH0910", "C:/Users/Documentos/windyR/datos/estacion_NH0910")
#' @export
descarga_datos<- function(id_estacion, ruta_archivo) {
  url_repositorio <- "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/"

  estacion_url <- paste0(url_repositorio, id_estacion, ".csv")

  download.file(url = estacion_url, destfile = ruta_archivo,mode = "wb")

  datos <- readr::read_csv(ruta_archivo)

  return(datos)
}
