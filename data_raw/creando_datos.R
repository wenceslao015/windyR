datos <- dplyr::bind_rows(
  estacion_NH0472 |>
    dplyr::group_by(fecha) |>
    dplyr::summarize(horas_frio = mean(horas_frio, na.rm = TRUE)) |>
    dplyr::mutate(estacion = "NH0472"),

  estacion_NH0910 |>
    dplyr::group_by(fecha) |>
    dplyr::summarize(horas_frio = mean(horas_frio, na.rm = TRUE)) |>
    dplyr::mutate(estacion = "NH0910"),

  estacion_NH0046 |>
    dplyr::group_by(fecha) |>
    dplyr::summarize(horas_frio = mean(horas_frio, na.rm = TRUE)) |>
    dplyr::mutate(estacion = "NH0046"),

  estacion_NH0098 |>
    dplyr::group_by(fecha) |>
    dplyr::summarize(horas_frio = mean(horas_frio, na.rm = TRUE)) |>
    dplyr::mutate(estacion = "NH0098"),

  estacion_NH0437 |>
    dplyr::group_by(fecha) |>
    dplyr::summarize(horas_frio = mean(horas_frio, na.rm = TRUE)) |>
    dplyr::mutate(estacion = "NH0437")
)
estacion_NH0472 <- estacion_NH0472
estacion_NH0910 <- estacion_NH0910
estacion_NH0046 <- estacion_NH0046
estacion_NH0098 <- estacion_NH0098
estacion_NH0437 <- estacion_NH0437

usethis::use_data(datos)
usethis::use_data(estacion_NH0472)
usethis::use_data(estacion_NH0910)
usethis::use_data(estacion_NH0046)
usethis::use_data(estacion_NH0098)
usethis::use_data(estacion_NH0437)
