# test_that("tabla_resumen_temperatura funciona correctamente", {
#   # Cargar los datos de ejemplo
#   data("estaciones_merged", package = "PaqueteNuevo")
#
#   # Ejecutar la función
#   resultado <- tabla_resumen_temperatura(estaciones_merged)
#
#   # Verificar que el resultado sea un data.frame
#   expect_s3_class(resultado, "data.frame")
#
#   # Verificar que tenga las columnas esperadas
#   expect_true(all(c("id", "min_temp", "max_temp", "mean_temp") %in% names(resultado)))
#
#   # Verificar que los valores no sean NA
#   expect_true(all(!is.na(resultado$min_temp)))
#   expect_true(all(!is.na(resultado$max_temp)))
#   expect_true(all(!is.na(resultado$mean_temp)))
# })
