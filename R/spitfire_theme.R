# R/spitfire_theme.R

#' Define a Custom Theme for Spitfire Branding
#'
#' This function creates a custom theme for ggplot2 or plotly using the Verdana font family. It is designed to provide
#' a professional and clean look suitable for business and academic presentations. The theme customizes text,
#' titles, axes, legends, panels, and plot margins to create a consistent and identifiable style for all plots.
#'
#' @param format A character string specifying the format of the plot, either "ggplot" or "plotly". Default is "ggplot".
#'
#' @return A theme object that can be applied to ggplot2 or plotly plots.
#' @examples
#' # ggplot2 example
#' p <- ggplot(mpg, aes(displ, hwy, colour = class)) +
#'   geom_point() +
#'   labs(title = "Engine Displacement vs. Highway Miles Per Gallon",
#'        subtitle = "Data from the 'mpg' dataset",
#'        caption = "Source: ggplot2 mpg dataset") +
#'   spitfire_theme(format = "ggplot")  # Apply the custom theme
#' print(p)
#'
#' # plotly example
#' p <- plot_ly(data = mpg, x = ~displ, y = ~hwy, color = ~class, type = "scatter", mode = "markers") %>%
#'   layout(title = list(text = "Engine Displacement vs. Highway Miles Per Gallon",
#'                       font = list(family = "Verdana", size = 16, color = "#333333")),
#'          xaxis = list(title = "Displacement", titlefont = list(family = "Verdana", size = 12, color = "#333333")),
#'          yaxis = list(title = "Highway MPG", titlefont = list(family = "Verdana", size = 12, color = "#333333")),
#'          legend = list(font = list(family = "Verdana", size = 10)),
#'          margin = list(l = 15, r = 15, b = 5, t = 5)) %>%
#'   spitfire_theme(format = "plotly")  # Apply the custom theme
#' p
#'
#' @export
#'
#' @import ggplot2
#' @import plotly
spitfire_theme <- function(format = "ggplot") {
  if (format == "ggplot") {
    return(
      ggplot2::theme_minimal(base_family = "Verdana") +
        ggplot2::theme(
          # Text elements
          text = ggplot2::element_text(family = "Verdana", color = "#333333"),

          # Title and labels
          plot.title = ggplot2::element_text(size = 16, face = "bold", hjust = 0),
          plot.subtitle = ggplot2::element_text(size = 14, margin = ggplot2::margin(b = 10)),
          plot.caption = ggplot2::element_text(size = 10, margin = ggplot2::margin(t = 10)),
          axis.title = ggplot2::element_text(size = 12, face = "bold"),
          axis.title.x = ggplot2::element_text(margin = ggplot2::margin(t = 5)),
          axis.title.y = ggplot2::element_text(margin = ggplot2::margin(r = 5)),

          # Axis text
          axis.text = ggplot2::element_text(size = 10),
          axis.text.x = ggplot2::element_text(angle = 0, hjust = 0.5, vjust = 0.5),
          axis.text.y = ggplot2::element_text(angle = 0, hjust = 1, vjust = 0.5),

          # Legends
          legend.position = "right",
          legend.title = ggplot2::element_text(face = "bold"),
          legend.text = ggplot2::element_text(size = 10),
          legend.background = ggplot2::element_rect(fill = "white", color = NA),
          legend.key = ggplot2::element_rect(fill = "white", color = "white"),

          # Panel settings
          panel.background = ggplot2::element_rect(fill = "white", color = "gray80"),
          panel.grid.major = ggplot2::element_line(color = "gray90", linewidth = 0.5),
          panel.grid.minor = ggplot2::element_line(color = "gray95", linewidth = 0.25),
          panel.border = ggplot2::element_rect(color = "black", fill = NA, linewidth = 1),

          # Plot margins
          plot.margin = ggplot2::unit(c(15, 15, 5, 5), "pt")
        )
    )
  } else if (format == "plotly") {
    return(
      list(
        layout = list(
          font = list(family = "Verdana", color = "#333333"),
          title = list(
            font = list(size = 16, color = "#333333", family = "Verdana"),
            x = 0
          ),
          xaxis = list(
            title = list(
              font = list(size = 12, color = "#333333", family = "Verdana")
            ),
            tickfont = list(size = 10, color = "#333333", family = "Verdana")
          ),
          yaxis = list(
            title = list(
              font = list(size = 12, color = "#333333", family = "Verdana")
            ),
            tickfont = list(size = 10, color = "#333333", family = "Verdana")
          ),
          legend = list(
            font = list(size = 10, color = "#333333", family = "Verdana"),
            bgcolor = "white",
            bordercolor = "white"
          ),
          margin = list(l = 15, r = 15, b = 5, t = 5)
        )
      )
    )
  } else {
    stop("Invalid format. Please choose either 'ggplot' or 'plotly'.")
  }
}
