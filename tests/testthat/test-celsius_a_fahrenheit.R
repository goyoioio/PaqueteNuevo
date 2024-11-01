test_that("la conversion de celsius a fahrenheit funciona", {
  expect_equal(object = celsius_to_fahrenheit(5), expected = 41)
})

test_that("la temperatura no es numerica", {
  expect_error(object = celsius_to_fahrenheit("5"), regexp = "La temperatura debe ser numerica.")
})
