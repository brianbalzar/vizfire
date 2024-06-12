# R/spitfire_gradient.R

#' Gradient Color Palettes for ggplot2
#'
#' This function provides a selection of gradient color palettes for use with ggplot2.
#' It allows you to choose from a variety of pre-defined palettes and apply them to
#' either fill or color scales in your ggplot2 plots.
#'
#' @param palette An integer specifying which palette to use. Values range from 1 to 5.
#' @param use_fill A logical indicating whether to apply the palette to fill scales
#'        (default is TRUE, which applies the palette to fill scales).
#' @param ... Additional arguments passed to `scale_fill_gradientn` or `scale_color_gradientn`.
#'
#' @return A ggplot2 scale function (`scale_fill_gradientn` or `scale_color_gradientn`) with
#'         the specified palette applied.
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(x = wt, y = mpg, fill = hp)) +
#'   geom_tile() +
#'   spitfire_gradient(palette = 1, use_fill = TRUE)
#'
#' ggplot(mtcars, aes(x = wt, y = mpg, color = hp)) +
#'   geom_point(size = 3) +
#'   spitfire_gradient(palette = 2, use_fill = FALSE)
#'
#' @export
spitfire_gradient <- function(palette = 1, use_fill = TRUE, ...) {
  palettes <- list(
    palette1 = colorRampPalette(c("#c2e699", "#78c679", "#31a354", "#006837", "#004529"))(100),  # Darkened start and end
    palette2 = colorRampPalette(c("#e0f3db", "#ccebc5", "#a8ddb5", "#7bccc4", "#4d9092"))(100),  # Darkened start and end
    palette3 = colorRampPalette(c("#deebf7", "#c6dbef", "#9ecae1", "#6baed6", "#4285B4"))(100),  # Darkened start and end
    palette4 = colorRampPalette(c("#fdcc8a", "#fc8d59", "#e34a33", "#b30000", "#7f0000"))(100),  # Darkened start and end
    palette5 = colorRampPalette(c("#d0d1e6", "#a6bddb", "#74a9cf", "#2b8cbe", "#005b9f"))(100)   # Darkened start and end
  )

  if (use_fill) {
    scale_fill_gradientn(colours = palettes[[palette]], ...)
  } else {
    scale_color_gradientn(colours = palettes[[palette]], ...)
  }
}
