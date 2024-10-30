#' Datos de temperaturas y horas de frío.
#'
#' Este dataset contiene datos meteorológicos de la estación NH0472. Incluye información sobre las fechas, las horas de frío registradas y el identificador de la estación.
#'
#' @format Un data frame con las siguientes columnas:
#' \describe{
#'   \item{fecha}{Fecha de la observación, en formato "YYYY-MM-DD".}
#'   \item{horas_frio}{Número de horas de frío registrado en cada fecha. Puede contener valores NA si no hay datos disponibles.}
#'   \item{estacion}{Codigo identificador de la estación.}
#' }
#'
#' @details
#' Las horas de frío se refieren a la cantidad de horas en las que la temperatura fue lo suficientemente baja para contribuir a los procesos de acumulación de frío, relevantes en estudios meteorológicos y agrícolas.
#'
#' @source
#' Los datos fueron obtenidos de un repositorio de Github.
"datos"

