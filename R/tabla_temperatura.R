#' Tabla de temperatura de estaciones
#'
#' @param datos
#' @import dplyr
#'
#' @return
#' Nos devuelve una tabla con valores de temperatura
#'
#' @examples
#' tabla_de_temperatura_estaciones(estacion_NH0046)
#'
#' @export
tabla_de_temperatura_estaciones <- function(datos) {
  resumen <- datos %>%
    group_by(id) %>%
    summarise(
      min_temp = min(temperatura_abrigo_150cm, na.rm = TRUE),
      max_temp = max(temperatura_abrigo_150cm, na.rm = TRUE),
      mean_temp = mean(temperatura_abrigo_150cm, na.rm = TRUE)
    )
  return(resumen)
}
