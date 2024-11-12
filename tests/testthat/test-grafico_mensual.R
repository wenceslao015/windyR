

test_that("grafico_mensual crea un objeto ggplot", {
  # Crea un ejemplo de datos de entrada
  datos_prueba <- data.frame(
    fecha = as.Date(c("2023-01-01", "2023-02-01", "2023-03-01", "2023-04-01")),
    temperatura_abrigo_150cm = c(10, 15, 20, 25),
    id = c("A", "A", "A", "A")
  )

  # Ejecuta la función
  grafico <- grafico_mensual(datos_prueba)

  # Verifica que el objeto devuelto es de clase "ggplot"
  expect_s3_class(grafico, "ggplot")
})

test_that("grafico_mensual maneja la falta del dato: color", {
  datos_prueba <- data.frame(
    fecha = as.Date(c("2023-01-01", "2023-02-01", "2023-03-01", "2023-04-01")),
    temperatura_abrigo_150cm = c(10, 15, 20, 25),
    id = c("A", "A", "A", "A")
  )

  # Ejecuta la función sin especificar 'colores'
  grafico <- grafico_mensual(datos_prueba)

  # Verifica que se genera un gráfico sin errores
  expect_s3_class(grafico, "ggplot")
})

test_that("grafico_mensual maneja un título personalizado", {
  datos_prueba <- data.frame(
    fecha = as.Date(c("2023-01-01", "2023-02-01", "2023-03-01", "2023-04-01")),
    temperatura_abrigo_150cm = c(10, 15, 20, 25),
    id = c("A", "A", "A", "A")
  )

  # Prueba con un título personalizado
  grafico <- grafico_mensual(datos_prueba, titulo = "Temperaturas Mensuales")

  # Verifica que el título del gráfico se establece correctamente
  expect_equal(grafico$labels$title, "Temperaturas Mensuales")
})
