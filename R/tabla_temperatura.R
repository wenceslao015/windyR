#' Generar tabla resumen de temperaturas por estación
#'
#' La función `tabla_de_temperatura_estaciones` genera una tabla resumen que incluye la temperatura máxima, mínima y promedio por estación a partir de un conjunto de datos de temperatura.
#'
#' @param datos Un data frame que contiene los datos de temperatura por estación.
#'
#' @return Un data frame con el resumen de temperaturas por estación, con las siguientes columnas:
#' \itemize{
#'   \item \code{id}: Identificador de la estación.
#'   \item \code{min_temp}: Temperatura mínima registrada en la estación.
#'   \item \code{max_temp}: Temperatura máxima registrada en la estación.
#'   \item \code{mean_temp}: Temperatura promedio registrada en la estación.
#' }
#'
#' @examples
#' tabla_de_temperatura_estaciones(estacion_NH0046)
#'
#' @export
tabla_de_temperatura_estaciones <- function(datos) {
  resumen <- datos |>
    dplyr::group_by(id) |>
    dplyr::summarise(
      min_temp = min(temperatura_abrigo_150cm, na.rm = TRUE),
      max_temp = max(temperatura_abrigo_150cm, na.rm = TRUE),
      mean_temp = mean(temperatura_abrigo_150cm, na.rm = TRUE)
    )
  return(resumen)
}

