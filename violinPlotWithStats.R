#### Fun with functions and plots
##   Author: Magdalena Warren
##   Date: 2023-12-04

library(tidyverse)
library(viridis)
source("data_wrangle/function_wrangling.R")
source("Geoms/Geom_function.R")
source("stats_function/addStats.R")
source("prettyfy/function_prettyfy.R")

# create function that takes data and auxillary arguments
# and saves the violin plot in a 6 x 4 inch pdf
violinPlotWithStats = function(df, indep="Species", dep="Sepal.Length", fil="Petal.Length",
                               comps=list(c("Setosa", "Versicolor"),
                                          c("Versicolor", "Virginica"),
                                          c("Setosa", "Virginica")),
                               color_list=c("setosa" = "#06d6a0",
                                            "versicolor" = "#118ab2",
                                            "virginica" = "#073b4c"), ...) {
  new_df = clean_data(df)
  print(head(new_df))

  p1 = fig(df=new_df, indep, dep, fil)
  print(p1)

  p2 = prettyfy(uglyp=p1, fill_scale=viridis::scale_fill_viridis(name = "Petal length"),
                color_scale=scale_color_manual(values = color_list),
                y_label="Sepal length",
                ...)
  print(p2)

  p3 = add_stats(p=p2, comps, map=T, tip_length=0)
  print(p3)

  ggsave("prettyViolin.pdf", p3, width=6, height=4, units="in")
  return(p3)
}

f = violinPlotWithStats(df = iris, axis.text.x=element_text(face="italic"), axis.title.x=element_blank())
f + theme_classic()
