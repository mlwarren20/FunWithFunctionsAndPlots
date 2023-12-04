# indep <- "Species"
# dep <- "Sepal.Length"
# df <- wrangled_iris
# fil <- "Petal.length"
fig <- function(df, indep, dep, fil) {
  # ggplot(data=df, aes(x={{ indep }}, y={{ dep }})) +
  ggplot(data=df, aes(x=get(indep), y=get(dep))) +
    # geom_violin(aes(color={{ indep }}), trim=FALSE, show.legend=FALSE) +
    geom_violin(aes(color=get(indep)), trim=FALSE, show.legend=FALSE) +
    # geom_jitter(aes(fill={{ fil }}), shape=21, size=3, alpha=0.8)
    geom_jitter(aes(fill=get(fil)), shape=21, size=3, alpha=0.8)
}
