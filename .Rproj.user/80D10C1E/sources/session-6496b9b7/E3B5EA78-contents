# R/spitfire_box_theme.R

#' Box Theme for bslib Value Boxes
#'
#' This function provides a selection of box themes for use with `value_box` from the `bslib` package.
#' It allows you to choose from a variety of pre-defined themes and apply them to
#' value boxes in your shiny or Rmarkdown dashboards.
#'
#' @param palette An integer specifying which theme to use. Values range from 1 to 20.
#'
#' @return A list with `bg` and `fg` colors for use in `value_box` themes.
#' @examples
#' library(bslib)
#' library(bsicons)
#'
#' value_box(
#'   title = "Customer lifetime value",
#'   value = "$5,000",
#'   showcase = bs_icon("bank2"),
#'   theme = spitfire_box_theme(1)
#' )
#'
#' @export
spitfire_box_theme <- function(palette = 1) {
  palettes <- list(
    palette1 = list(fg = "#e0f2f1", bg = "#1b9e77"),   # Light mint foreground with deep green background
    palette2 = list(fg = "#ffecd9", bg = "#d95f02"),   # Cream foreground with burnt orange background
    palette3 = list(fg = "#dedeff", bg = "#7570b3"),   # Soft lavender foreground with medium purple background
    palette4 = list(fg = "#1b5e20", bg = "#c8e6c9"),   # Dark green foreground with light green background
    palette5 = list(fg = "#e8f5e9", bg = "#66a61e"),   # Very light green foreground with leaf green background
    palette6 = list(fg = "#fcf8e3", bg = "#e6ab02"),   # Light yellow foreground with gold background
    palette7 = list(fg = "#fff2e2", bg = "#a6761d"),   # Off-white foreground with brown background
    palette8 = list(fg = "#eeeeee", bg = "#666666"),   # Light grey foreground with dark grey background
    palette9 = list(fg = "#e0f2f1", bg = "#1b7837"),   # Light mint foreground with dark green background
    palette10 = list(fg = "#ffecd9", bg = "#8c2d04"),  # Cream foreground with dark reddish brown background
    palette11 = list(fg = "#d0e1f9", bg = "#345995"),  # Light blue foreground with deep blue background
    palette12 = list(fg = "#ffffff", bg = "#c2cad0"),  # White foreground with light grey background
    palette13 = list(fg = "#ede7f6", bg = "#5f4b8b"),  # Light purple foreground with deeper purple background
    palette14 = list(fg = "#6d4c41", bg = "#d7ccc8"),  # Deep brown foreground with light brown background
    palette15 = list(fg = "#e0f2f1", bg = "#008080"),  # Light mint foreground with teal background
    palette16 = list(fg = "#546e7a", bg = "#cfd8dc"),  # Slate foreground with light blue-grey background
    palette17 = list(fg = "#004d40", bg = "#b2dfdb"),  # Dark teal foreground with light teal background
    palette18 = list(fg = "#ede7f6", bg = "#6b5b95"),  # Light purple foreground with muted purple background
    palette19 = list(fg = "#37474f", bg = "#eceff1"),  # Dark blue-grey foreground with very light grey background
    palette20 = list(fg = "#e1f5fe", bg = "#4682b4")   # Light cyan foreground with steel blue background
  )

  theme <- palettes[[palette]]
  return(value_box_theme(bg = theme$bg, fg = theme$fg))
}
