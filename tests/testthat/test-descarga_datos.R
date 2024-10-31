test_that("descarga_datos descarga y lee el archivo correctamente", {

  # Ruta temporal para el archivo descargado
  ruta_archivo <- tempfile(fileext = ".csv")

  # Ejecutar la función
  datos_prueba <- descarga_datos("NH0046", ruta_archivo)

  # Verificar que el archivo fue descargado y leído correctamente
  expect_true(file.exists(ruta_archivo)) # Verifica que el archivo existe
  expect_s3_class(datos_prueba, "data.frame")   # Verifica que es un data.frame

  # Verifica que las columnas y filas no estén vacías
  expect_gt(ncol(datos_prueba), 0)              # Asegura que haya al menos una columna
  expect_gt(nrow(datos_prueba), 0)              # Asegura que haya al menos una fila

  # Limpia el archivo temporal
  unlink(ruta_archivo)
})
