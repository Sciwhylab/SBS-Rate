### Figure 5 (b)

## heatmap unequal rows and col with NA
### heatmap with automated legends

### heatmap2 and heatmaply and ggplot

muek = as.data.frame(heatmaps_rate)
colnames(muek)= c("Taxon","G.size","GC%","Repeat %", "C.G","T.G.C")

### ggplot

library(ggplot2)
library(hrbrthemes)



### ggplot requires a different data structure
### x vs y , fill = Z - this form
rownames(muek)= muek$Taxons
x1 = muek$Taxon
y2 = colnames(muek)

### removing unncesarry heading
y2 = as.vector(y2)
y2p = setdiff(y2,y2[1])
#x1 = y2p

###converting to vector form
muek1 = muek[,-1]
rownames(muek1)= muek$Taxon
z1 = c(muek1$G.size,muek1$GC,muek1$`Repeat %`,muek1$C.G,muek1$T.G.C)


a1 = nrow(muek1)
a2 = ncol(muek1)
a1a2 = a1*a2


z2vec = as.vector(z1)

### another way to create the required df
data2 = expand.grid(X = x1, Y = y2p)
data2$Z = z2vec
Z_val = data2$Z
data2$Z = log10(data2$Z)
colnames(data2)= c("Taxons","Parameters","log_P")



### plotting histgram with ggplot2

# Color Brewer palette

library(RColorBrewer)
library(tidyverse)

### RColorbrewer ueful only for discrete values

library(viridis)
p = ggplot(data2, aes(Parameters, Taxons, fill= log_P)) + 
  geom_tile()+
  scale_fill_gradient(low="dark blue", high="white") +
  theme_classic()+
  scale_x_discrete(position = "top")+
  scale_y_discrete(position = "left")+
  ggtitle(label = "Genome parameters vs SNM rates(Taxon I)")+
  theme(plot.title = element_text(hjust = 0.5,face = "bold",size = 8.5),
        plot.subtitle = element_text(hjust = 0.5),
        axis.title = element_text(face = "bold",size = 7))
p + theme(axis.text.x = element_text(size= 6.5 ,angle = 90),
          axis.text.y = element_text(size= 6.5),
          panel.border = element_rect(colour = "black", fill = NA, linewidth = 0.5)) 

ggsave(filename = "gpar vs SNM I.png",dpi = 360)



### Figure 5 (d)

muek = as.data.frame(heatmaps_rate)
colnames(muek)= c("Taxon","G.size","GC%","Repeat %", "C.G","T.G.C")

### ggplot

library(ggplot2)
library(hrbrthemes)



### ggplot requires a different data structure
### x vs y , fill = Z - this form
rownames(muek)= muek$Taxons
x1 = muek$Taxon
y2 = colnames(muek)

### removing unncesarry heading
y2 = as.vector(y2)
y2p = setdiff(y2,y2[1])
#x1 = y2p

###converting to vector form
muek1 = muek[,-1]
rownames(muek1)= muek$Taxon
z1 = c(muek1$G.size,muek1$GC,muek1$`Repeat %`,muek1$C.G,muek1$T.G.C)


a1 = nrow(muek1)
a2 = ncol(muek1)
a1a2 = a1*a2


z2vec = as.vector(z1)

### another way to create the required df
data2 = expand.grid(X = x1, Y = y2p)
data2$Z = z2vec
Z_val = data2$Z
data2$Z = log10(data2$Z)
colnames(data2)= c("Taxons","Parameters","log_P")



### plotting histgram with ggplot2

# Color Brewer palette

library(RColorBrewer)
library(tidyverse)

### RColorbrewer ueful only for discrete values

library(viridis)
p = ggplot(data2, aes(Parameters, Taxons, fill= log_P)) + 
  geom_tile()+
  scale_fill_gradient(low="dark blue", high="white") +
  theme_classic()+
  scale_x_discrete(position = "top")+
  scale_y_discrete(position = "left")+
  ggtitle(label = "Genome parameters vs SNM rates(Taxon II)")+
  theme(plot.title = element_text(hjust = 0.5,face = "bold",size = 8.5),
        plot.subtitle = element_text(hjust = 0.5),
        axis.title = element_text(face = "bold",size = 7))
p + theme(axis.text.x = element_text(size=6.5 ,angle = 90),
          axis.text.y = element_text(size=6.5),
          panel.border = element_rect(colour = "black", fill = NA, linewidth = 0.5)) 

ggsave(filename = "gpar vs SNM II.png",dpi = 360)

