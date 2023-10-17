library(tidyverse)
library(ggforce)


ds <-read_csv("data/group_split_metrics_class.csv")
ds <- filter(ds, model == "group")
view(ds)
ggplot(ds, mapping = aes (x = Class, y = Prevalence, fill = Kappa)) + geom_point(size=1) + ylim(-.5,.5) + facet_wrap(~Class) + ggtitle("Wow")
ggplot(ds, mapping = aes (x = Class, y = Prevalence,)) + ggtitle("wow") + geom_point(size=1)
       
       