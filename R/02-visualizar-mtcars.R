library("sessioninfo")
library("here")
library("ggplot2")

## Hello world
print("Soy Dara")

## Directorios para el proyecto
dir_plots <- here::here("figuras")
dir_rdata <- here::here("processed-data")

## Crear directorio para las figuras y archivos
dir.create(dir_plots, showWarnings = FALSE)
dir.create(dir_rdata, showWarnings = FALSE)

## Hacer una imagen de ejemplo
pdf(file.path(dir_plots, "mtcars_gear_vs_mpg.pdf"), useDingbats = FALSE)
ggplot(mtcars, aes(group = gear, y = mpg)) +
  geom_boxplot()
dev.off()

## Guardar datos
save(mtcars, file = file.path(dir_rdata, "mtcars.Rdata"))

## Para reproducir mi código
options(width = 120)
sessioninfo::session_info()

# - Session info -------------------------------------------------------------------------------------------------------
#  setting  value
#  version  R version 4.1.2 (2021-11-01)
#  os       Windows 10 x64 (build 22000)
#  system   x86_64, mingw32
#  ui       RStudio
#  language (EN)
#  collate  English_United States.1252
#  ctype    English_United States.1252
#  tz       America/New_York
#  date     2022-02-01
#  rstudio  2021.09.2+382 Ghost Orchid (desktop)
#  pandoc   NA
#
# - Packages -----------------------------------------------------------------------------------------------------------
#  package     * version date (UTC) lib source
#  assertthat    0.2.1   2019-03-21 [1] CRAN (R 4.1.2)
#  brio          1.1.3   2021-11-30 [1] CRAN (R 4.1.2)
#  cachem        1.0.6   2021-08-19 [1] CRAN (R 4.1.2)
#  callr         3.7.0   2021-04-20 [1] CRAN (R 4.1.2)
#  cli           3.1.1   2022-01-20 [1] CRAN (R 4.1.2)
#  colorspace    2.0-2   2021-06-24 [1] CRAN (R 4.1.2)
#  crayon        1.4.2   2021-10-29 [1] CRAN (R 4.1.2)
#  data.table    1.14.2  2021-09-27 [1] CRAN (R 4.1.2)
#  DBI           1.1.2   2021-12-20 [1] CRAN (R 4.1.2)
#  desc          1.4.0   2021-09-28 [1] CRAN (R 4.1.2)
#  devtools    * 2.4.3   2021-11-30 [1] CRAN (R 4.1.2)
#  digest        0.6.29  2021-12-01 [1] CRAN (R 4.1.2)
#  dplyr         1.0.7   2021-06-18 [1] CRAN (R 4.1.1)
#  ellipsis      0.3.2   2021-04-29 [1] CRAN (R 4.1.2)
#  fansi         1.0.2   2022-01-14 [1] CRAN (R 4.1.2)
#  farver        2.1.0   2021-02-28 [1] CRAN (R 4.1.2)
#  fastmap       1.1.0   2021-01-25 [1] CRAN (R 4.1.2)
#  fs            1.5.2   2021-12-08 [1] CRAN (R 4.1.2)
#  generics      0.1.1   2021-10-25 [1] CRAN (R 4.1.2)
#  ggplot2     * 3.3.5   2021-06-25 [1] CRAN (R 4.1.2)
#  glue          1.6.1   2022-01-22 [1] CRAN (R 4.1.2)
#  gtable        0.3.0   2019-03-25 [1] CRAN (R 4.1.2)
#  here        * 1.0.1   2020-12-13 [1] CRAN (R 4.1.2)
#  hms           1.1.1   2021-09-26 [1] CRAN (R 4.1.2)
#  labeling      0.4.2   2020-10-20 [1] CRAN (R 4.1.1)
#  lifecycle     1.0.1   2021-09-24 [1] CRAN (R 4.1.2)
#  lubridate     1.8.0   2021-10-07 [1] CRAN (R 4.1.2)
#  magrittr      2.0.2   2022-01-26 [1] CRAN (R 4.1.2)
#  memoise       2.0.1   2021-11-26 [1] CRAN (R 4.1.2)
#  munsell       0.5.0   2018-06-12 [1] CRAN (R 4.1.2)
#  pillar        1.6.5   2022-01-25 [1] CRAN (R 4.1.2)
#  pkgbuild      1.3.1   2021-12-20 [1] CRAN (R 4.1.2)
#  pkgconfig     2.0.3   2019-09-22 [1] CRAN (R 4.1.2)
#  pkgload       1.2.4   2021-11-30 [1] CRAN (R 4.1.2)
#  prettyunits   1.1.1   2020-01-24 [1] CRAN (R 4.1.2)
#  processx      3.5.2   2021-04-30 [1] CRAN (R 4.1.2)
#  ps            1.6.0   2021-02-28 [1] CRAN (R 4.1.2)
#  purrr         0.3.4   2020-04-17 [1] CRAN (R 4.1.2)
#  R6            2.5.1   2021-08-19 [1] CRAN (R 4.1.2)
#  remotes       2.4.2   2021-11-30 [1] CRAN (R 4.1.2)
#  rlang         1.0.0   2022-01-26 [1] CRAN (R 4.1.2)
#  rprojroot     2.0.2   2020-11-15 [1] CRAN (R 4.1.2)
#  rsthemes      0.3.1   2021-11-22 [1] Github (gadenbuie/rsthemes@bbe73ca)
#  rstudioapi    0.13    2020-11-12 [1] CRAN (R 4.1.2)
#  scales        1.1.1   2020-05-11 [1] CRAN (R 4.1.2)
#  sessioninfo * 1.2.2   2021-12-06 [1] CRAN (R 4.1.2)
#  suncalc       0.5.0   2019-04-03 [1] CRAN (R 4.1.2)
#  testthat    * 3.1.2   2022-01-20 [1] CRAN (R 4.1.2)
#  tibble        3.1.6   2021-11-07 [1] CRAN (R 4.1.2)
#  tidyselect    1.1.1   2021-04-30 [1] CRAN (R 4.1.2)
#  usethis     * 2.1.5   2021-12-09 [1] CRAN (R 4.1.2)
#  utf8          1.2.2   2021-07-24 [1] CRAN (R 4.1.2)
#  vctrs         0.3.8   2021-04-29 [1] CRAN (R 4.1.2)
#  withr         2.4.3   2021-11-30 [1] CRAN (R 4.1.2)
#
#  [1] C:/R/R-4.1.2bioc3.14/library
#
# ----------------------------------------------------------------------------------------------------------------------
