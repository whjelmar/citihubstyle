library(testthat)
library(ggplot2)
library(citihubstyle)

context('theme_citihub() works with simple examples')

test_that(
  'theme_citihub can replicate a simple rug and point plot',
  {
    p <- ggplot2::ggplot(
      data = mtcars,
      aes(
        x = mpg,
        y = wt
      )
    ) +
      geom_point() +
      theme_citihub()

    vdiffr::expect_doppelganger("simple rug and point plot", p)
  }
)
