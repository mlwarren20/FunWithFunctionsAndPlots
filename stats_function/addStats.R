library(ggplot2)
library(ggsignif)


add_stats=function(p, comps, map=T, tip_length=0){

  upper_lim=max(layer_scales(p)$y$range$range) #8

  lower_lim=min(layer_scales(p)$y$range$range)

  y_lim=1.25*upper_lim #12

  num=length(comps) #3

  diff=y_lim-upper_lim #4

  interval=diff/(num+1) #4/4 1

  breaks=numeric(length=num)

  for (i in 1:length(breaks)) {
    print(i)
    upper_lim = upper_lim+interval
    breaks[i]=upper_lim
  }


  p + ylim(lower_lim, y_lim) +
    geom_signif(comparisons=comps,
                map_signif_level = map,
                tip_length = tip_length,
                y_position = breaks)
}
