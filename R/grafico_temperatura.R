#' Grafico de temperatura mensual
#'
#' @param datos
#' @param paleta
#' @param titulo
#' @import dplyr
#' @import ggplot2
#' @import lubridate
#' @return
#' Nos devuelve un grafico con la estacion seleccionada, con el eje x sobre el mes y el eje y sobre temperatura promedio
#'
#' @examples
#' grafico_temperatura_mensual(estacion_NH0046, colores = "red", titulo = "Temperatura")
#' @export
grafico_mensual <- function(datos, colores = NULL, titulo = "Temperatura") {

  datos$fecha <- as.Date(datos$fecha)

  if (is.null(colores)) {
    colores <- sample(colors(), length(unique(datos$id)))
  }

  grafico <- datos |>
    mutate(mes = month(fecha)) |>
    group_by(id, mes) |>
    summarise(mean_temp = mean(temperatura_abrigo_150cm, na.rm = TRUE), .groups = 'drop') |>
    ggplot(aes(x = mes, y = mean_temp, color = id)) +
    geom_line() +
    scale_color_manual(values = colores) +
    labs(title = titulo, x = "Mes", y = "Temperatura Promedio")

  return(grafico)
}

