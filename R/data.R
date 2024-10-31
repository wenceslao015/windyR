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

#' Datos de la estación meteorológica NH0098
#'
#' Este conjunto de datos incluye mediciones de la estación meteorológica "NH0098".
#'
#' @format Un dataframe con las siguientes columnas:
#' \describe{
#'   \item{id}{ID de la estación realizada.}
#'   \item{fecha}{Fecha de la medición.}
#'   \item{temperatura_abrigo_150cm}{Temperatura medida a 150 cm de altura.}
#'   \item{temperatura_abrigo_150cm_maxima}{Temperatura máxima a 150 cm.}
#'   \item{temperatura_abrigo_150cm_minima}{Temperatura mínima a 150 cm.}
#'   \item{temperatura_intemperie_5cm_minima}{Temperatura mínima en intemperie a 5 cm.}
#'   \item{temperatura_intemperie_50cm_minima}{Temperatura mínima en intemperie a 50 cm.}
#'   \item{temperatura_suelo_5cm_media}{Temperatura media del suelo a 5 cm.}
#'   \item{temperatura_suelo_10cm_media}{Temperatura media del suelo a 10 cm.}
#'   \item{temperatura_inte_5cm}{Temperatura interna a 5 cm.}
#'   \item{temperatura_intemperie_150cm_minima}{Temperatura mínima en intemperie a 150 cm.}
#'   \item{humedad_suelo}{Humedad del suelo.}
#'   \item{precipitacion_pluviometrica}{Precipitación medida.}
#'   \item{granizo}{1 si hubo granizo y 0 si no hubo.}
#'   \item{nieve}{1 si hubo nieve y 0 si no hubo.}
#'   \item{heliofania_efectiva}{Heliofanía efectiva.}
#'   \item{heliofania_relativa}{Heliofanía relativa.}
#'   \item{tesion_vapor_media}{Tensión de vapor media.}
#'   \item{humedad_media}{Humedad media.}
#'   \item{humedad_media_8_14_20}{Humedad media de 8 a 14 y 20.}
#'   \item{rocio_medio}{Rocío medio.}
#'   \item{duracion_follaje_mojado}{Duración del follaje mojado.}
#'   \item{velocidad_viento_200cm_media}{Velocidad media del viento a 200 cm.}
#'   \item{direccion_viento_200cm}{Dirección del viento a 200 cm.}
#'   \item{velocidad_viento_1000cm_media}{Velocidad media del viento a 1000 cm.}
#'   \item{direccion_viento_1000cm}{Dirección del viento a 1000 cm.}
#'   \item{velocidad_viento_maxima}{Velocidad máxima del viento.}
#'   \item{presion_media}{Presión media.}
#'   \item{radiacion_global}{Radiación global.}
#'   \item{radiacion_neta}{Radiación neta.}
#'   \item{evaporacion_tanque}{Evaporación en tanque.}
#'   \item{evapotranspiracion_potencial}{Evapotranspiración potencial.}
#'   \item{profundidad_napa}{Profundidad de napa.}
#'   \item{horas_frio}{Horas de frío.}
#'   \item{unidad_frio}{Unidad de frío.}
#' }
#' @source Repositorio de GitHub.
"estacion_NH0098"

#' Datos de la estación meteorológica NH0046
#'
#' Este conjunto de datos incluye mediciones de la estación meteorológica "NH0046".
#'
#' @format Un dataframe con las siguientes columnas:
#' \describe{
#'   \item{id}{ID de la estación realizada.}
#'   \item{fecha}{Fecha de la medición.}
#'   \item{temperatura_abrigo_150cm}{Temperatura medida a 150 cm de altura.}
#'   \item{temperatura_abrigo_150cm_maxima}{Temperatura máxima a 150 cm.}
#'   \item{temperatura_abrigo_150cm_minima}{Temperatura mínima a 150 cm.}
#'   \item{temperatura_intemperie_5cm_minima}{Temperatura mínima en intemperie a 5 cm.}
#'   \item{temperatura_intemperie_50cm_minima}{Temperatura mínima en intemperie a 50 cm.}
#'   \item{temperatura_suelo_5cm_media}{Temperatura media del suelo a 5 cm.}
#'   \item{temperatura_suelo_10cm_media}{Temperatura media del suelo a 10 cm.}
#'   \item{temperatura_inte_5cm}{Temperatura interna a 5 cm.}
#'   \item{temperatura_intemperie_150cm_minima}{Temperatura mínima en intemperie a 150 cm.}
#'   \item{humedad_suelo}{Humedad del suelo.}
#'   \item{precipitacion_pluviometrica}{Precipitación medida.}
#'   \item{granizo}{1 si hubo granizo y 0 si no hubo.}
#'   \item{nieve}{1 si hubo nieve y 0 si no hubo.}
#'   \item{heliofania_efectiva}{Heliofanía efectiva.}
#'   \item{heliofania_relativa}{Heliofanía relativa.}
#'   \item{tesion_vapor_media}{Tensión de vapor media.}
#'   \item{humedad_media}{Humedad media.}
#'   \item{humedad_media_8_14_20}{Humedad media de 8 a 14 y 20.}
#'   \item{rocio_medio}{Rocío medio.}
#'   \item{duracion_follaje_mojado}{Duración del follaje mojado.}
#'   \item{velocidad_viento_200cm_media}{Velocidad media del viento a 200 cm.}
#'   \item{direccion_viento_200cm}{Dirección del viento a 200 cm.}
#'   \item{velocidad_viento_1000cm_media}{Velocidad media del viento a 1000 cm.}
#'   \item{direccion_viento_1000cm}{Dirección del viento a 1000 cm.}
#'   \item{velocidad_viento_maxima}{Velocidad máxima del viento.}
#'   \item{presion_media}{Presión media.}
#'   \item{radiacion_global}{Radiación global.}
#'   \item{radiacion_neta}{Radiación neta.}
#'   \item{evaporacion_tanque}{Evaporación en tanque.}
#'   \item{evapotranspiracion_potencial}{Evapotranspiración potencial.}
#'   \item{profundidad_napa}{Profundidad de napa.}
#'   \item{horas_frio}{Horas de frío.}
#'   \item{unidad_frio}{Unidad de frío.}
#' }
#' @source Repositorio de GitHub.
"estacion_NH0046"

#' Datos de la estación meteorológica NH0437
#'
#' Este conjunto de datos incluye mediciones de la estación meteorológica "NH0437".
#'
#' @format Un dataframe con las siguientes columnas:
#' \describe{
#'   \item{id}{ID de la estación realizada.}
#'   \item{fecha}{Fecha de la medición.}
#'   \item{temperatura_abrigo_150cm}{Temperatura medida a 150 cm de altura.}
#'   \item{temperatura_abrigo_150cm_maxima}{Temperatura máxima a 150 cm.}
#'   \item{temperatura_abrigo_150cm_minima}{Temperatura mínima a 150 cm.}
#'   \item{temperatura_intemperie_5cm_minima}{Temperatura mínima en intemperie a 5 cm.}
#'   \item{temperatura_intemperie_50cm_minima}{Temperatura mínima en intemperie a 50 cm.}
#'   \item{temperatura_suelo_5cm_media}{Temperatura media del suelo a 5 cm.}
#'   \item{temperatura_suelo_10cm_media}{Temperatura media del suelo a 10 cm.}
#'   \item{temperatura_inte_5cm}{Temperatura interna a 5 cm.}
#'   \item{temperatura_intemperie_150cm_minima}{Temperatura mínima en intemperie a 150 cm.}
#'   \item{humedad_suelo}{Humedad del suelo.}
#'   \item{precipitacion_pluviometrica}{Precipitación medida.}
#'   \item{granizo}{1 si hubo granizo y 0 si no hubo.}
#'   \item{nieve}{1 si hubo nieve y 0 si no hubo.}
#'   \item{heliofania_efectiva}{Heliofanía efectiva.}
#'   \item{heliofania_relativa}{Heliofanía relativa.}
#'   \item{tesion_vapor_media}{Tensión de vapor media.}
#'   \item{humedad_media}{Humedad media.}
#'   \item{humedad_media_8_14_20}{Humedad media de 8 a 14 y 20.}
#'   \item{rocio_medio}{Rocío medio.}
#'   \item{duracion_follaje_mojado}{Duración del follaje mojado.}
#'   \item{velocidad_viento_200cm_media}{Velocidad media del viento a 200 cm.}
#'   \item{direccion_viento_200cm}{Dirección del viento a 200 cm.}
#'   \item{velocidad_viento_1000cm_media}{Velocidad media del viento a 1000 cm.}
#'   \item{direccion_viento_1000cm}{Dirección del viento a 1000 cm.}
#'   \item{velocidad_viento_maxima}{Velocidad máxima del viento.}
#'   \item{presion_media}{Presión media.}
#'   \item{radiacion_global}{Radiación global.}
#'   \item{radiacion_neta}{Radiación neta.}
#'   \item{evaporacion_tanque}{Evaporación en tanque.}
#'   \item{evapotranspiracion_potencial}{Evapotranspiración potencial.}
#'   \item{profundidad_napa}{Profundidad de napa.}
#'   \item{horas_frio}{Horas de frío.}
#'   \item{unidad_frio}{Unidad de frío.}
#' }
#' @source Repositorio de GitHub.
"estacion_NH0437"

#' Datos de la estación meteorológica NH0472
#'
#' Este conjunto de datos incluye mediciones de la estación meteorológica "NH0472".
#'
#' @format Un dataframe con las siguientes columnas:
#' \describe{
#'   \item{id}{ID de la estación realizada.}
#'   \item{fecha}{Fecha de la medición.}
#'   \item{temperatura_abrigo_150cm}{Temperatura medida a 150 cm de altura.}
#'   \item{temperatura_abrigo_150cm_maxima}{Temperatura máxima a 150 cm.}
#'   \item{temperatura_abrigo_150cm_minima}{Temperatura mínima a 150 cm.}
#'   \item{temperatura_intemperie_5cm_minima}{Temperatura mínima en intemperie a 5 cm.}
#'   \item{temperatura_intemperie_50cm_minima}{Temperatura mínima en intemperie a 50 cm.}
#'   \item{temperatura_suelo_5cm_media}{Temperatura media del suelo a 5 cm.}
#'   \item{temperatura_suelo_10cm_media}{Temperatura media del suelo a 10 cm.}
#'   \item{temperatura_inte_5cm}{Temperatura interna a 5 cm.}
#'   \item{temperatura_intemperie_150cm_minima}{Temperatura mínima en intemperie a 150 cm.}
#'   \item{humedad_suelo}{Humedad del suelo.}
#'   \item{precipitacion_pluviometrica}{Precipitación medida.}
#'   \item{granizo}{1 si hubo granizo y 0 si no hubo.}
#'   \item{nieve}{1 si hubo nieve y 0 si no hubo.}
#'   \item{heliofania_efectiva}{Heliofanía efectiva.}
#'   \item{heliofania_relativa}{Heliofanía relativa.}
#'   \item{tesion_vapor_media}{Tensión de vapor media.}
#'   \item{humedad_media}{Humedad media.}
#'   \item{humedad_media_8_14_20}{Humedad media de 8 a 14 y 20.}
#'   \item{rocio_medio}{Rocío medio.}
#'   \item{duracion_follaje_mojado}{Duración del follaje mojado.}
#'   \item{velocidad_viento_200cm_media}{Velocidad media del viento a 200 cm.}
#'   \item{direccion_viento_200cm}{Dirección del viento a 200 cm.}
#'   \item{velocidad_viento_1000cm_media}{Velocidad media del viento a 1000 cm.}
#'   \item{direccion_viento_1000cm}{Dirección del viento a 1000 cm.}
#'   \item{velocidad_viento_maxima}{Velocidad máxima del viento.}
#'   \item{presion_media}{Presión media.}
#'   \item{radiacion_global}{Radiación global.}
#'   \item{radiacion_neta}{Radiación neta.}
#'   \item{evaporacion_tanque}{Evaporación en tanque.}
#'   \item{evapotranspiracion_potencial}{Evapotranspiración potencial.}
#'   \item{profundidad_napa}{Profundidad de napa.}
#'   \item{horas_frio}{Horas de frío.}
#'   \item{unidad_frio}{Unidad de frío.}
#' }
#' @source Repositorio de GitHub.
"estacion_NH0472"

#' Datos de la estación meteorológica NH0910
#'
#' Este conjunto de datos incluye mediciones de la estación meteorológica "NH0910".
#'
#' @format Un dataframe con las siguientes columnas:
#' \describe{
#'   \item{id}{ID de la estación realizada.}
#'   \item{fecha}{Fecha de la medición.}
#'   \item{temperatura_abrigo_150cm}{Temperatura medida a 150 cm de altura.}
#'   \item{temperatura_abrigo_150cm_maxima}{Temperatura máxima a 150 cm.}
#'   \item{temperatura_abrigo_150cm_minima}{Temperatura mínima a 150 cm.}
#'   \item{temperatura_intemperie_5cm_minima}{Temperatura mínima en intemperie a 5 cm.}
#'   \item{temperatura_intemperie_50cm_minima}{Temperatura mínima en intemperie a 50 cm.}
#'   \item{temperatura_suelo_5cm_media}{Temperatura media del suelo a 5 cm.}
#'   \item{temperatura_suelo_10cm_media}{Temperatura media del suelo a 10 cm.}
#'   \item{temperatura_inte_5cm}{Temperatura interna a 5 cm.}
#'   \item{temperatura_intemperie_150cm_minima}{Temperatura mínima en intemperie a 150 cm.}
#'   \item{humedad_suelo}{Humedad del suelo.}
#'   \item{precipitacion_pluviometrica}{Precipitación medida.}
#'   \item{granizo}{1 si hubo granizo y 0 si no hubo.}
#'   \item{nieve}{1 si hubo nieve y 0 si no hubo.}
#'   \item{heliofania_efectiva}{Heliofanía efectiva.}
#'   \item{heliofania_relativa}{Heliofanía relativa.}
#'   \item{tesion_vapor_media}{Tensión de vapor media.}
#'   \item{humedad_media}{Humedad media.}
#'   \item{humedad_media_8_14_20}{Humedad media de 8 a 14 y 20.}
#'   \item{rocio_medio}{Rocío medio.}
#'   \item{duracion_follaje_mojado}{Duración del follaje mojado.}
#'   \item{velocidad_viento_200cm_media}{Velocidad media del viento a 200 cm.}
#'   \item{direccion_viento_200cm}{Dirección del viento a 200 cm.}
#'   \item{velocidad_viento_1000cm_media}{Velocidad media del viento a 1000 cm.}
#'   \item{direccion_viento_1000cm}{Dirección del viento a 1000 cm.}
#'   \item{velocidad_viento_maxima}{Velocidad máxima del viento.}
#'   \item{presion_media}{Presión media.}
#'   \item{radiacion_global}{Radiación global.}
#'   \item{radiacion_neta}{Radiación neta.}
#'   \item{evaporacion_tanque}{Evaporación en tanque.}
#'   \item{evapotranspiracion_potencial}{Evapotranspiración potencial.}
#'   \item{profundidad_napa}{Profundidad de napa.}
#'   \item{horas_frio}{Horas de frío.}
#'   \item{unidad_frio}{Unidad de frío.}
#' }
#' @source Repositorio de GitHub.
"estacion_NH0910"

