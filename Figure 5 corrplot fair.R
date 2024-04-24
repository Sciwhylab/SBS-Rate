### Figure 5 fair

library(purrr)
library(ggplot2)
library(corrplot)


imputed = as.data.frame(heatmaps_rate)
imputed = imputed[,-1]
colnames(imputed)= c("G.size","GC%","Repeat%","C.G","T.G.C")
imputed = as.matrix(imputed)
rownames(imputed)= heatmaps_rate$Taxon

pdf(file = "taxonI_corrplot.pdf", width = 8, height = 6,pointsize = 15)


### if it starts working , then redraw with add function

corrplot::corrplot(imputed,main = "Genome parameters vs SNM rate (Taxon I)",
                   method = 'shade',type = 'full',
                   tl.cex = 0.7,mar = c(1.5,1.5,1.5,1.5),
                   add = TRUE)
title(xlab = "Parameters", ylab = "Taxons")
dev.off()

### 5(c)

### import taxon II dataframe

library(purrr)
library(ggplot2)
library(corrplot)


imputed = as.data.frame(heatmaps_rate)
imputed = imputed[,-1]
colnames(imputed)= c("G.size","GC%","Repeat%","C.G","T.G.C")
imputed = as.matrix(imputed)
rownames(imputed)= heatmaps_rate$Taxon

pdf(file = "taxonII_corrplot.pdf", width = 8, height = 6,pointsize = 15)


### if it starts working , then redraw with add function

corrplot::corrplot(imputed,main = "Genome parameters vs SNM rate (Taxon II)",
                   method = 'shade',type = 'full',
                   tl.cex = 0.7,mar = c(1.5,1.5,1.5,1.5),
                   add = TRUE)
title(xlab = "Parameters", ylab = "Taxons")
dev.off()
