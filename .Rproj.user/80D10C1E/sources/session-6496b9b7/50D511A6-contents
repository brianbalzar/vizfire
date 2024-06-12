# R/spitfire_kable.R

#' Customized Kable Table for LaTeX and HTML
#'
#' This function generates a customized kable table formatted for LaTeX or HTML, with options for font size and table caption.
#' It applies specific styling options such as repeating headers and striped rows.
#'
#' @param data A data frame to be formatted into a table.
#' @param font_size An integer specifying the font size for the table. Default is 12.
#' @param table_caption A character string specifying the table caption. Default is NULL.
#' @param format A character string specifying the format of the table, either "latex" or "html". Default is "latex".
#'
#' @return A kable table object formatted for LaTeX or HTML with the specified customizations.
#' @examples
#' library(knitr)
#' library(kableExtra)
#'
#' data <- head(mtcars)
#' spitfire_kable(data, font_size = 10, table_caption = "Table of Car Data", format = "latex")
#' spitfire_kable(data, font_size = 10, table_caption = "Table of Car Data", format = "html")
#'
#' @export
spitfire_kable <- function(data, font_size = 12, table_caption = NULL, format = "latex") {

  if (format == "latex") {
    if (!is.null(table_caption)) {
      out <- kable(data, format = "latex", escape = FALSE, booktabs = TRUE,
                   longtable = TRUE, full_width = TRUE, caption = table_caption) %>%
        kable_styling(latex_options = c("repeat_header", "striped"), font_size = font_size) %>%
        row_spec(0, bold = TRUE) %>%
        column_spec(1, bold = TRUE)
    } else {
      out <- kable(data, format = "latex", escape = FALSE, booktabs = TRUE,
                   longtable = TRUE, full_width = TRUE) %>%
        kable_styling(latex_options = c("repeat_header", "striped"), font_size = font_size) %>%
        row_spec(0, bold = TRUE) %>%
        column_spec(1, bold = TRUE)
    }
  } else if (format == "html") {
    if (!is.null(table_caption)) {
      out <- kable(data, format = "html", escape = FALSE, table.attr = 'class="table table-striped"', caption = table_caption) %>%
        kable_styling(full_width = TRUE, font_size = font_size) %>%
        row_spec(0, bold = TRUE) %>%
        column_spec(1, bold = TRUE)
    } else {
      out <- kable(data, format = "html", escape = FALSE, table.attr = 'class="table table-striped"') %>%
        kable_styling(full_width = TRUE, font_size = font_size) %>%
        row_spec(0, bold = TRUE) %>%
        column_spec(1, bold = TRUE)
    }
  } else {
    stop("Invalid format. Please choose either 'latex' or 'html'.")
  }

  return(out)
}
