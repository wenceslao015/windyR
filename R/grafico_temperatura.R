#' Title
#'
#' @param datos
#' @param paleta
#' @param titulo
#' @import dplyr
#' @import ggplot2
#'
#' @return
#'
#' @examples
#'
#' @export
grafico_temperatura_mensual <- function(datos, colores = NULL, titulo = "Temperatura") {
  # Asegúrate de que la columna fecha esté en el formato correcto
  datos$fecha <- as.Date(datos$fecha)


  if (is.null(colores)) {
    colores <- sample(colors(), length(unique(datos$estacion)))
  }

  # Crear gráfico
  grafico <- datos |>
    mutate(mes = month(fecha)) |>
    group_by(estacion, mes) |>
    summarise(mean_temp = mean(temperatura_abrigo_150cm, na.rm = TRUE), .groups = 'drop') |>
    ggplot(aes(x = mes, y = mean_temp, color = estacion)) +
    geom_line() +
    scale_color_manual(values = colores) +
    labs(title = titulo, x = "Mes", y = "Temperatura Promedio")

  return(grafico)
}

