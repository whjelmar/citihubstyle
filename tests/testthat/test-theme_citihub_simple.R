library(testthat)
library(ggplot2)
library(citihubstyle)

context('theme_citihub() works with simple examples')

test_that(
  'theme_citihub can replicate a simple bar chart',
  {
    p <- ggplot(mtcars, aes(x=cyl)) + 
      geom_bar() + 
      labs(title="Frequency bar chart") +
      theme_citihub()
    

    vdiffr::expect_doppelganger("simple simple bar chart", p)
  }
)
