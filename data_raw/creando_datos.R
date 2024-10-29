datos <- bind_rows(
  estacion_NH0472 %>% group_by(fecha) %>% summarize(horas_frio = mean(horas_frio, na.rm = TRUE)) %>% mutate(estacion = "NH0472"),
  estacion_NH0910 %>% group_by(fecha) %>% summarize(horas_frio = mean(horas_frio, na.rm = TRUE)) %>% mutate(estacion = "NH0910"),
  estacion_NH0046 %>% group_by(fecha) %>% summarize(horas_frio = mean(horas_frio, na.rm = TRUE)) %>% mutate(estacion = "NH0046"),
  estacion_NH0098 %>% group_by(fecha) %>% summarize(horas_frio = mean(horas_frio, na.rm = TRUE)) %>% mutate(estacion = "NH0098"),
  estacion_NH0437 %>% group_by(fecha) %>% summarize(horas_frio = mean(horas_frio, na.rm = TRUE)) %>% mutate(estacion = "NH0437")
)
usethis::use_data(datos)
