#' Convierte Temperatura de Celsius a Fahrenheit
#'
#' La función `celsius_to_fahrenheit` toma una temperatura en grados Celsius y la convierte en grados Fahrenheit.
#' @param temp_centigrados Una temperatura en grado Celsius.
#'
#' @return
#' La temperatura ingresada pero en grados Fahrenheit.
#' @export
celsius_to_fahrenheit <- function(temp_centigrados) {
  if (!is.numeric(temp_centigrados)){
    cli::cli_abort(c(
      "i" = "La temperatura debe ser numerica.",
      "x" = "temp_centigrados es {class(temp_centigrados)}"
    ))
  }
  temp_f <- (temp_centigrados * 9/5) + 32
  return(temp_f)
}
