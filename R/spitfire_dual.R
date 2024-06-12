# R/spitfire_dual.R

#' Dual Color Scheme for ggplot2
#'
#' This function provides a selection of dual color schemes for use with ggplot2.
#' It allows you to choose from a variety of pre-defined palettes, each containing
#' a low and a high color value.
#'
#' @param palette_number An integer specifying which palette to use. Values range from 1 to 5.
#'
#' @return A list with `low` and `high` colors for use in ggplot2 plots.
#' @examples
#' palette <- spitfire_dual(1)
#' ggplot(mtcars, aes(x = wt, y = mpg)) +
#'   geom_point(aes(color = hp)) +
#'   scale_color_gradient(low = palette$low, high = palette$high)
#'
#' @export
spitfire_dual <- function(palette_number) {
  palettes <- list(
    palette1 = list(low = "#34568B", high = "#CB6015"),
    palette2 = list(low = "#2874A6", high = "#B03A2E"),
    palette3 = list(low = "#138D75", high = "#CD6155"),
    palette4 = list(low = "#626567", high = "#AF601A"),
    palette5 = list(low = "#5B2C6F", high = "#196F3D")
  )

  if (palette_number < 1 || palette_number > length(palettes)) {
    stop("Invalid palette number. Please choose a number between 1 and", length(palettes))
  }

  return(palettes[[palette_number]])
}
