# R/spitfire_diverging.R

#' Diverging Color Palettes for ggplot2
#'
#' This function provides a selection of diverging color palettes for use with ggplot2.
#' It allows you to choose from a variety of pre-defined palettes and apply them to
#' either fill or color scales in your ggplot2 plots.
#'
#' @param palette An integer specifying which palette to use. Values range from 1 to 6.
#' @param use_fill A logical indicating whether to apply the palette to fill scales
#'        (default is TRUE, which applies the palette to fill scales).
#' @param ... Additional arguments passed to `scale_fill_gradient2` or `scale_color_gradient2`.
#'
#' @return A ggplot2 scale function (`scale_fill_gradient2` or `scale_color_gradient2`) with
#'         the specified palette applied.
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(x = wt, y = mpg, fill = hp)) +
#'   geom_tile() +
#'   spitfire_diverging(palette = 1, use_fill = TRUE)
#'
#' ggplot(mtcars, aes(x = wt, y = mpg, color = hp)) +
#'   geom_point(size = 3) +
#'   spitfire_diverging(palette = 2, use_fill = FALSE)
#'
#' @export
spitfire_diverging <- function(palette = 1, use_fill = TRUE, ...) {
  palettes <- list(
    palette1 = list(low = "#d73027", mid = "#fee08b", high = "#1a9850"),
    palette2 = list(low = "#b2182b", mid = "#fddbc7", high = "#2166ac"),
    palette3 = list(low = "#762a83", mid = "#e7d4e8", high = "#1b7837"),
    palette4 = list(low = "#40004b", mid = "#f7f7f7", high = "#5aae61"),
    palette5 = list(low = "#67001f", mid = "#fddbc7", high = "#878787"),
    palette6 = list(low = "#d73027", mid = "#b0b0b0", high = "#1a9850")
  )

  if (use_fill) {
    scale_fill_gradient2(low = palettes[[palette]]$low,
                         mid = palettes[[palette]]$mid,
                         high = palettes[[palette]]$high,
                         midpoint = 0, ...)
  } else {
    scale_color_gradient2(low = palettes[[palette]]$low,
                          mid = palettes[[palette]]$mid,
                          high = palettes[[palette]]$high,
                          midpoint = 0, ...)
  }
}
