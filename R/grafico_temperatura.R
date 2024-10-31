#' Gráfico de temperatura mensual promedio por estación
#'
#' La función grafico_mensual genera un gráfico de líneas que muestra la temperatura promedio mensual para cada estación en los datos proporcionados. Permite personalizar el título y los colores del gráfico.
#'
#' @param datos Un data frame que contiene los datos de temperatura por estación.
#' @param colores Un vector opcional de colores para cada estación. Si no se especifica, se seleccionarán colores aleatorios.
#' @param titulo Un string opcional que define el título del gráfico. Por defecto, es "Temperatura".
#'
#' @return Un objeto de clase ggplot que representa el gráfico de temperatura mensual promedio por estación.
#'
#' @examples
#' grafico_mensual(estacion_NH0046, colores = "red", titulo = "Temperatura")
#'
#' @import ggplot2
#' @import dplyr
#' @import lubridate
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
    scale_x_continuous(breaks = 1:12, labels = month.abb) +  # Abreviaturas de los meses
    labs(title = titulo, x = "Mes", y = "Temperatura Promedio") +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotación de etiquetas

  return(grafico)
}

