# Contribuyendo a windyR

Este documento describe cómo proponer un cambio para windyR.  
Para obtener una guía detallada sobre cómo contribuir a este y otros paquetes del tidyverse, consulta la [guía de contribución al desarrollo](https://rstd.io/tidy-contrib) y nuestros [principios de revisión de código](https://code-review.tidyverse.org/).

## Corrección de errores tipográficos

Puedes corregir errores tipográficos, ortográficos o gramaticales en la documentación directamente mediante la interfaz web de GitHub, siempre y cuando los cambios se realicen en el archivo _fuente_.  
Generalmente, esto significa que deberás editar los [comentarios de roxygen2](https://roxygen2.r-lib.org/articles/roxygen2.html) en un archivo `.R`, no en un archivo `.Rd`.  
Puedes encontrar el archivo `.R` que genera el `.Rd` leyendo el comentario en la primera línea.

## Cambios mayores

Si deseas realizar un cambio mayor, es recomendable primero abrir un issue y asegurarte de que alguien del equipo esté de acuerdo en que es necesario.  
Si has encontrado un error, abre un issue que ilustre el problema con un [reprex](https://www.tidyverse.org/help/#reprex) mínimo (esto también te ayudará a escribir una prueba unitaria, si es necesario).  
Consulta nuestra guía sobre [cómo crear un buen issue](https://code-review.tidyverse.org/issues/) para obtener más consejos.

### Proceso para Pull Request

*   Haz un fork del paquete y clónalo en tu computadora. Si no lo has hecho antes, te recomendamos usar `usethis::create_from_github("wenceslao015/windyR", fork = TRUE)`.

*   Instala todas las dependencias de desarrollo con `devtools::install_dev_deps()`, y luego asegúrate de que el paquete pase el R CMD check ejecutando `devtools::check()`.  
    Si R CMD check no pasa correctamente, es recomendable pedir ayuda antes de continuar.

*   Crea una rama de Git para tu Pull Request (PR). Recomendamos usar `usethis::pr_init("descripcion-breve-del-cambio")`.

*   Realiza tus cambios, haz commit en git y luego crea un PR ejecutando `usethis::pr_push()`, y sigue las instrucciones en tu navegador.  
    El título de tu PR debe describir brevemente el cambio.  
    El cuerpo de tu PR debe contener `Fixes #numero-del-issue`.

*   Para los cambios visibles para el usuario, añade un punto en la parte superior de `NEWS.md` (justo debajo del primer encabezado). Sigue el estilo descrito en <https://style.tidyverse.org/news.html>.

### Estilo de código

*   El nuevo código debe seguir la [guía de estilo](https://style.tidyverse.org) de tidyverse.  
    Puedes usar el paquete [styler](https://CRAN.R-project.org/package=styler) para aplicar estos estilos, pero no ajustes el estilo de código que no esté relacionado con tu PR.

*   Usamos [roxygen2](https://cran.r-project.org/package=roxygen2), con [sintaxis Markdown](https://cran.r-project.org/web/packages/roxygen2/vignettes/rd-formatting.html), para la documentación.

*   Usamos [testthat](https://cran.r-project.org/package=testthat) para pruebas unitarias.  
    Las contribuciones que incluyen casos de prueba son más fáciles de aceptar.

## Código de Conducta

Ten en cuenta que el proyecto windyR se lanza con un [Código de Conducta para Contribuyentes](CODE_OF_CONDUCT.md).  
Al contribuir a este proyecto, aceptas cumplir con sus términos.

