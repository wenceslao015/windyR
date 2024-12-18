
<!-- README.md is generated from README.Rmd. Please edit that file -->

# windyR <img src="man/figures/logo.png" align="right" width="150"/>

<!-- badges: start -->

[![R-CMD-check](https://github.com/wenceslao015/windyR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/wenceslao015/windyR/actions/workflows/R-CMD-check.yaml)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![Codecov test
coverage](https://codecov.io/gh/wenceslao015/windyR/graph/badge.svg)](https://app.codecov.io/gh/wenceslao015/windyR)
<!-- badges: end -->

## Objetivo

El objetivo del paquete es trabajar con datos meteorologicos, pudiendo
crear tablas y gráficos.

## Autores

Este paquete fue creado por [Justo
Borrás](https://github.com/justoborras2006) y [Wenceslao
Tejerina](https://github.com/wenceslao015), ambos estudiantes de la
Licenciatura en Ciencia de Datos Universidad Austral

## Instalación

Se puede instalar la version de windyR desde
[GitHub](https://github.com/) con:

``` r
# install.packages("pak")
# pak::pak("wenceslao015/windyR")
```

## Funciones

1.  **`descarga_datos()`**: Descarga un archivo CSV de datos de una
    estación meteorológica específica desde un repositorio en línea y lo
    guarda en la ruta especificada. Luego, lee el archivo y devuelve los
    datos como un data frame.
2.  **`tabla_de_temperatura_estaciones`** : genera una tabla resumen que
    incluye la temperatura máxima, mínima y promedio por estación a
    partir de un conjunto de datos de temperatura.
3.  **`grafico_mensual`**: Genera un gráfico de líneas que muestra la
    temperatura promedio mensual para cada estación en los datos
    proporcionados. Permite personalizar el título y los colores del
    gráfico.

### Ejemplos de uso

Así es como debería usarse nuestro paquete:

``` r
library(windyR)
```

``` r
NH0098 = descarga_datos("NH0098", "estacion_NH0098.csv")
#> Warning: One or more parsing issues, call `problems()` on your data frame for details,
#> e.g.:
#>   dat <- vroom(...)
#>   problems(dat)
```

``` r
tabla_de_temperatura_estaciones(NH0098)
#> # A tibble: 1 × 4
#>   id     min_temp max_temp mean_temp
#>   <chr>     <dbl>    <dbl>     <dbl>
#> 1 NH0098    -17.4     37.4      18.6
```

``` r
grafico_mensual(NH0098, colores = "red", titulo = "Temperatura")
```

<img src="man/figures/README-unnamed-chunk-6-1.png" width="100%" />

## Contribuciones

Si deseas realizar contribuciones al paquete, ya sea para agregar
mejoras, corregir errores o proponer nuevas funciones, sigue estos
pasos:

1.  **Crea una rama para tu contribución**: Para mantener el historial
    de cambios ordenado, crea una rama nueva para trabajar en tu
    contribución. Puedes hacer esto ejecutando
    `git checkout -b nombre-de-la-rama`.

2.  **Realiza un fork y clona el repositorio**: Haz un *fork* de este
    repositorio en tu cuenta de GitHub y clona el repositorio en tu
    máquina local para trabajar en los cambios.

3.  **Realiza tus cambios y haz un pull request**: Haz los cambios que
    consideres necesarios en tu copia del repositorio. Luego, abre un
    *pull request* (PR) a la rama principal del proyecto con una
    descripción clara del propósito de tu contribución. Asegúrate de que
    el PR esté bien documentado y, si es posible, incluye pruebas de tus
    cambios para facilitar su revisión.

Agradecemos tus contribuciones y te recomendamos seguir el [código de
conducta](CODE_OF_CONDUCT.md) para fomentar un ambiente positivo y
colaborativo.
