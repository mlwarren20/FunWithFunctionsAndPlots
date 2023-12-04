this directory contains an accessory function that adds statistics to a ggplot object

``` {r}
add_stats(p, comps, map=T, tip_length=0)
```
where p is the ggplot object
tip_length is the length of the 'teeth' on the significance bar. Default is set to 0, but you can increase the height

comps is a list of comparisons you would like to make
example list:
```{r}
list(c("Setosa", "Versicolor"),
     c("Versicolor", "Virginica"),
    # ....  as long as you would like, each comparison is a new statistical pairing
)
```

**note: the comps list needs to be in the order that you want comparisons to appear**
the first comparison will appear lowest in the significance bars, and will build upwards

