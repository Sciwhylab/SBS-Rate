###correlation heatmaps
imputed = as.data.frame(heatmaps_rate)
imputed = imputed[,-1]

### import numeric dataframe imputed
colnames(imputed)= c("G.size","GC","Repeat %", "C.G","T.G.C")
rownames(imputed) = heatmaps_rate$Taxons
imputed = as.matrix(imputed)

library(purrr)
library(ggplot2)

par(cex.main = 1.1)
corrplot::corrplot(imputed,main = "Genome parameters vs SNM rates(Taxon I)",
                   method = 'shade',
                   tl.cex = 0.7,mar = c(1.5,1.5,1.5,1.5))
