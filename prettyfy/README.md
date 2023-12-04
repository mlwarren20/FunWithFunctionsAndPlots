The function `prettyfy` will modify an existing `ggplot` object with pretty color and fill scale, y label and theme.

It contains the arguments : 

* `uglyp` = input `ggplot` object
* `fill_scale` = output from `ggplot2::scale_fill_*` function that defines a fill scale 
* `color_scale` = output from `ggplot2::scale_color_*` function that defines a color scale * * `y_label` = character defining y-axis-title                 
* `...` = additional arguments input to the `ggplot2::theme` function
