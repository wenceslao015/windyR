library(testthat)

test_that("tabla_de_temperatura_estaciones devuelve un data frame", {
  datos_prueba <- data.frame(
    id = c("A", "A", "B", "B"),
    temperatura_abrigo_150cm = c(10, 15, 20, 25)
  )

  resumen <- tabla_de_temperatura_estaciones(datos_prueba)
  expect_s3_class(resumen, "data.frame")
})

test_that("tabla_de_temperatura_estaciones calcula correctamente mínimos, máximos y promedios", {
  datos_prueba <- data.frame(
    id = c("A", "A", "B", "B"),
    temperatura_abrigo_150cm = c(10, 15, 20, 25)
  )

  resumen <- tabla_de_temperatura_estaciones(datos_prueba)

  expect_equal(resumen$min_temp[resumen$id == "A"], 10)
  expect_equal(resumen$max_temp[resumen$id == "A"], 15)
  expect_equal(resumen$mean_temp[resumen$id == "A"], 12.5)

  expect_equal(resumen$min_temp[resumen$id == "B"], 20)
  expect_equal(resumen$max_temp[resumen$id == "B"], 25)
  expect_equal(resumen$mean_temp[resumen$id == "B"], 22.5)
})

test_that("tabla_de_temperatura_estaciones maneja valores nulos correctamente", {
  datos_prueba <- data.frame(
    id = c("A", "A", "B", "B"),
    temperatura_abrigo_150cm = c(10, NA, 20, 25)
  )

  resumen <- tabla_de_temperatura_estaciones(datos_prueba)

  expect_equal(resumen$min_temp[resumen$id == "A"], 10)
  expect_equal(resumen$max_temp[resumen$id == "A"], 10)
  expect_equal(resumen$mean_temp[resumen$id == "A"], 10)

  expect_equal(resumen$min_temp[resumen$id == "B"], 20)
  expect_equal(resumen$max_temp[resumen$id == "B"], 25)
  expect_equal(resumen$mean_temp[resumen$id == "B"], 22.5)
})
