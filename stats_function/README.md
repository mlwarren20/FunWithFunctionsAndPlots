this directory contains an accessory function that adds statistics to a ggplot object

``` {r}
add_stats(p, comps, DEFAULTS)
```
where p is the ggplot object
comps is a list of comparisons you would like to make
example list:


* note: the comps list needs to be in the order that you want comparisons to appear*
the first comparison will appear lowest in the significance bars, and will build upwards

