# R/spitfire_discrete.R

#' Discrete Color Palettes for ggplot2
#'
#' This function provides a selection of discrete color palettes for use with ggplot2.
#' It allows you to choose from a variety of pre-defined palettes and apply them to
#' either fill or color scales in your ggplot2 plots.
#'
#' @param palette An integer specifying which palette to use. Values range from 1 to 20.
#' @param use_fill A logical indicating whether to apply the palette to fill scales
#'        (default is FALSE, which applies the palette to color scales).
#' @param ... Additional arguments passed to `scale_fill_manual` or `scale_color_manual`.
#'
#' @return A ggplot2 scale function (`scale_fill_manual` or `scale_color_manual`) with
#'         the specified palette applied.
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(x = factor(cyl), fill = factor(cyl))) +
#'   geom_bar() +
#'   spitfire_discrete(palette = 1, use_fill = TRUE)
#'
#' ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
#'   geom_point(size = 3) +
#'   spitfire_discrete(palette = 2)
#'
#' @export
spitfire_discrete <- function(palette = 1, use_fill = FALSE, ...) {
  palettes <- list(
    palette1 = c("#d73027", "#fc8d59", "#fee08b", "#d9ef8b", "#91cf60", "#1a9850", "#66bd63", "#a6d96a", "#d9ef8b", "#ffffbf"),
    palette2 = c("#1b9e77", "#d95f02", "#7570b3", "#e7298a", "#66a61e", "#e6ab02", "#a6761d", "#666666", "#1b9e77", "#d95f02"),
    palette3 = c("#e41a1c", "#377eb8", "#4daf4a", "#984ea3", "#ff7f00", "#ffff33", "#a65628", "#f781bf", "#999999", "#e41a1c"),
    palette4 = c("#a6cee3", "#1f78b4", "#b2df8a", "#33a02c", "#fb9a99", "#e31a1c", "#fdbf6f", "#ff7f00", "#cab2d6", "#6a3d9a"),
    palette5 = c("#fbb4ae", "#b3cde3", "#ccebc5", "#decbe4", "#fed9a6", "#ffffcc", "#e5d8bd", "#fddaec", "#f2f2f2", "#b3e2cd"),
    palette6 = c("#f0f4c3", "#f06292", "#ba68c8", "#7986cb", "#4fc3f7", "#4dd0e1", "#4db6ac", "#81c784", "#aed581", "#dce775"),
    palette7 = c("#b3e5fc", "#29b6f6", "#66bb6a", "#ffa726", "#8d6e63", "#f06292", "#ba68c8", "#7986cb", "#4fc3f7", "#4dd0e1"),
    palette8 = c("#e3f2fd", "#1e88e5", "#43a047", "#fb8c00", "#6d4c41", "#8e24aa", "#d81b60", "#1e88e5", "#004d40", "#512da8"),
    palette9 = c("#ff5722", "#3f51b5", "#e8eaf6", "#009688", "#795548", "#ffc107", "#03a9f4", "#e91e63", "#9c27b0", "#673ab7"),
    palette10 = c("#e0f7fa", "#00acc1", "#00897b", "#f4511e", "#5d4037", "#fbc02d", "#7b1fa2", "#c2185b", "#512da8", "#303f9f"),
    palette11 = c("#f3e5f5", "#8e24aa", "#d81b60", "#1e88e5", "#004d40"),
    palette12 = c("#a05000", "#d87815", "#f0a830", "#a89070", "#607848"),
    palette13 = c("#003366", "#336699", "#6699CC", "#9966CC", "#330099"),
    palette14 = c("#762a83", "#9970ab", "#c2a5cf", "#e7d4e8", "#f7f4f9"),
    palette15 = c("#004d40", "#00796b", "#009688", "#00acc1", "#00bcd4"),
    palette16 = c("#b71c1c", "#a5d6a7", "#c5e1a5", "#e6ee9c", "#fff59d"),
    palette17 = c("#0d47a1", "#90caf9", "#b0bec5", "#cfd8dc", "#eceff1"),
    palette18 = c("#e65100", "#ffcc80", "#d7ccc8", "#bcaaa4", "#8d6e63"),
    palette19 = c("#1b5e20", "#a5d6a7", "#c5e1a5", "#e6ee9c", "#fff59d"),
    palette20 = c("#c2185b", "#f48fb1", "#ce93d8", "#b39ddb", "#9fa8da")
  )

  if (use_fill) {
    scale_fill_manual(values = palettes[[palette]], ...)
  } else {
    scale_color_manual(values = palettes[[palette]], ...)
  }
}
