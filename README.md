# VizFire

`vizfire` is an R package that provides custom themes and palettes for ggplot2 and plotly, designed to give your visualizations a professional and clean look suitable for business and academic presentations.

## Installation

You can install the `vizfire` package directly from GitHub using the `remotes` package:

```r
install.packages("remotes")
remotes::install_github("brianbalzar/vizfire")
```

## Features

- **Custom ggplot2 Themes**: Apply consistent and professional styles to your ggplot2 visualizations.
- **Custom Plotly Themes**: Apply consistent and professional styles to your plotly visualizations.
- **Discrete Color Palettes**: Use predefined discrete color palettes for ggplot2.
- **Gradient Color Palettes**: Use predefined gradient color palettes for ggplot2.
- **Diverging Color Palettes**: Use predefined diverging color palettes for ggplot2.
- **Dual Color Schemes**: Use dual color schemes for ggplot2.
- **Customized Kable Tables**: Generate customized tables formatted for LaTeX or HTML using kableExtra.
- **Heatmaps**: Generate heatmaps with predefined color palettes and styling options for ggplot2.


## Usage

### Custom ggplot2 Theme

```r
library(ggplot2)
library(vizfire)

p <- ggplot(mpg, aes(displ, hwy, colour = class)) +
  geom_point() +
  labs(title = "Engine Displacement vs. Highway Miles Per Gallon",
       subtitle = "Data from the 'mpg' dataset",
       caption = "Source: ggplot2 mpg dataset") +
  spitfire_theme(format = "ggplot")  # Apply the custom theme

print(p)
```

### Custom Plotly Theme

```r
library(plotly)
library(vizfire)

p <- plot_ly(data = mpg, x = ~displ, y = ~hwy, color = ~class, type = "scatter", mode = "markers") %>%
  layout(title = list(text = "Engine Displacement vs. Highway Miles Per Gallon",
                      font = list(family = "Arial", size = 16, color = "#333333")),
         xaxis = list(title = "Displacement", titlefont = list(family = "Arial", size = 12, color = "#333333")),
         yaxis = list(title = "Highway MPG", titlefont = list(family = "Arial", size = 12, color = "#333333")),
         legend = list(font = list(family = "Arial", size = 10)),
         margin = list(l = 15, r = 15, b = 5, t = 5)) %>%
  spitfire_theme(format = "plotly")  # Apply the custom theme

p
```
### Discrete Color Palettes
```r
library(ggplot2)
library(vizfire)

ggplot(mtcars, aes(x = factor(cyl), fill = factor(cyl))) +
  geom_bar() +
  spitfire_discrete(palette = 1, use_fill = TRUE)
```
### Gradient Color Palettes
```r
library(ggplot2)
library/vizfire)

ggplot(mtcars, aes(x = wt, y = mpg, color = hp)) +
  geom_point(size = 3) +
  spitfire_gradient(palette = 1, use_fill = FALSE)
```

### Diverging Color Palettes
```r
library(ggplot2)
library(vizfire)

ggplot(mtcars, aes(x = wt, y = mpg, fill = hp)) +
  geom_tile() +
  spitfire_diverging(palette = 1, use_fill = TRUE)
```
### Dual Color Palettes
```r
library(ggplot2)
library(vizfire)

palette <- spitfire_dual(1)
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(aes(color = hp)) +
  scale_color_gradient(low = palette$low, high = palette$high)
```
### Customized Kable Tables
```r
library(knitr)
library(kableExtra)
library(vizfire)

data <- head(mtcars)
spitfire_kable(data, font_size = 10, table_caption = "Table of Car Data", format = "latex")
spitfire_kable(data, font_size = 10, table_caption = "Table of Car Data", format = "html")
```
### Heatmaps
```r
library(ggplot2)
library(vizfire)

data <- data.frame(
  x = rep(1:10, each = 10),
  y = rep(1:10, 10),
  fill = runif(100)
)

spitfire_heatmap(data, x = "x", y = "y", fill = "fill", palette = 1)
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

We welcome contributions to `vizfire`. Please see our [CONTRIBUTING](CONTRIBUTING.md) guidelines for more details.

## Acknowledgements

Special thanks to everyone who has contributed to the development of this package.
