#' Funcion de descarga de datos
#'
#' @param id_estacion
#' @param ruta_archivo
#'
#' @return
#' @export
#'
#' @examples
descarga_datos<- function(id_estacion, ruta_archivo) {
  url_repositorio <- "https://github.com/wenceslao015/windyR/tree/23d9bc8be68747c66f6c35631cf33ea27dd933a2/datos"

  estacion_url <- paste0(url_repositorio, id_estacion, ".csv")

  download.file(url = estacion_url, destfile = ruta_archivo)

  datos <- readr::read_csv(ruta_archivo)

  return(datos)
}
