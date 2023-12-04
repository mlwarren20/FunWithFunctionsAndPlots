prettyfy <- function(uglyp,
                  fill_scale,
                  color_scale,
                  y_label,
                  ...) {
  uglyp +
    fill_scale +
    color_scale +
    ggplot2::theme(...) +
    ggplot2::ylab(y_label)
}
