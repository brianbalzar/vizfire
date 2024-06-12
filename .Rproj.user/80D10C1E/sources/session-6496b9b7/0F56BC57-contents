# R/spitfire_heatmap.R

#' Customized Heatmap for ggplot2
#'
#' This function generates a heatmap with predefined color palettes and styling options for ggplot2.
#' It provides options to customize the color palette and the theme.
#'
#' @param data A data frame containing the data to be plotted.
#' @param x A string specifying the column name for the x-axis.
#' @param y A string specifying the column name for the y-axis.
#' @param fill A string specifying the column name for the fill aesthetic.
#' @param palette An integer specifying which color palette to use. Default is 1.
#' @param low A character string specifying the low color for the gradient. Default is NULL.
#' @param high A character string specifying the high color for the gradient. Default is NULL.
#' @param theme A ggplot2 theme function to apply to the plot. Default is theme_minimal().
#'
#' @return A ggplot2 heatmap with the specified customizations.
#' @examples
#' library(ggplot2)
#' data <- data.frame(x = rep(1:10, each = 10), y = rep(1:10, 10), fill = runif(100))
#' spitfire_heatmap(data, x = "x", y = "y", fill = "fill", palette = 1)
#'
#' @export
spitfire_heatmap <- function(data, x, y, fill, palette = 1, low = NULL, high = NULL, theme = ggplot2::theme_minimal()) {
  palettes <- list(
    palette1 = c("#e0f3db", "#a8ddb5", "#43a2ca"),
    palette2 = c("#f7fcfd", "#e0ecf4", "#8856a7"),
    palette3 = c("#f7fcf5", "#e5f5e0", "#31a354"),
    palette4 = c("#fee5d9", "#fcae91", "#fb6a4a"),
    palette5 = c("#edf8fb", "#b3cde3", "#8c96c6")
  )

  if (is.null(low) || is.null(high)) {
    colors <- palettes[[palette]]
    low <- colors[1]
    high <- colors[length(colors)]
  }

  ggplot(data, aes_string(x = x, y = y, fill = fill)) +
    geom_tile() +
    scale_fill_gradient(low = low, high = high) +
    theme
}
