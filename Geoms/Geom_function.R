indep <- species
dep <- sepal.length
df <- wrangled_iris
fil <- Petal.length
fig <- function(df, indep, dep, fil) {
  ggplot(df, aes(x= indep, y=dep)) + geom_violin(aes(color=indep), trim=FALSE, show.legend=FALSE) + geom_jitter(aes(fill=fil), shape=21, size=3, alpha=0.8)
}