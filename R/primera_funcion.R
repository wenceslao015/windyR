#' Funcion de descarga de datos
#'
#' La funcion `descarga_datos()` descarga un archivo CSV de datos de una estación meteorológica específica desde un repositorio en línea y lo guarda en la ruta especificada. Luego, lee el archivo y devuelve los datos como un data frame.
#'
#' @param id_estacion Un string con el ID de la estación meteorológica (por ejemplo, "NH0046"). Este ID se utiliza para construir la URL de descarga del archivo.
#' @param ruta_archivo Un string con la ruta completa y el nombre del archivo donde se guardará el CSV descargado.
#'
#' @return Un data frame con los datos de la estación meteorológica descargada.
#'
#' @examples
#' \dontrun{
#' descarga_datos("NH0098", "C:/inserte/su/ruta/de/directorio/datos/estacion_NH0098")
#' }
#'
#' @export

descarga_datos<- function(id_estacion, ruta_archivo) {
  url_repositorio <- "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/"

  estacion_url <- paste0(url_repositorio, id_estacion, ".csv")

  download.file(url = estacion_url, destfile = ruta_archivo,mode = "wb")

  datos <- readr::read_csv(ruta_archivo)

  return(datos)
}
