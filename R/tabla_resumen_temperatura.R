# Añadir esto al inicio de tu script R
utils::globalVariables("temperatura_abrigo_150cm")

#' Crea una Tabla Resumen de la Temperatura Abrigo
#'
#' La función `tabla_resumen_temperatura` crea una tabla de resumen de la temperatura_abrigo_150cm para una o más estaciones.
#' @param datos data.frame de las estaciones de cuya temperatura abrigo se quiere crear una tabla resumen.
#'
#' @return
#' Devuelve una tabla resumen de la temperatura abrigo de las estaciones ingresadas.
#' @export
#' @import dplyr
#'
#' @examples
#' # Cargar los datos de ejemplo desde el paquete
#' data_path <- system.file("data", "estaciones_merged.rda", package = "PaqueteMeteorologia")
#' load(data_path)
#'
#' # Llamar a la función usando los datos cargados
#' tabla_resumen_temperatura(estaciones_merged)
tabla_resumen_temperatura <- function(datos) {
  resumen <- datos %>%
    group_by(id) %>%
    summarise(
      min_temp = min(temperatura_abrigo_150cm, na.rm = TRUE),
      max_temp = max(temperatura_abrigo_150cm, na.rm = TRUE),
      mean_temp = mean(temperatura_abrigo_150cm, na.rm = TRUE)
    )
  return(resumen)
}
