### LOGP Taxon correlation

## heatmap unequal rows and col with NA
### heatmap with automated legends

### heatmap2 and heatmaply and ggplot

muek = as.data.frame(heatmaps_rate)
colnames(muek)= c("Taxon","G.size","GC","Repeat %", "C.G","T.G.C")

### ggplot

library(ggplot2)
library(hrbrthemes)


### changing values greater 0.2 to reduce scaling

### defining a function first
# m1 = which(muek >= 0.2)
# muek[m1]==0.2

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
z1 = as.vector(muek1)
muek1_df = as.data.frame(muek1)
rownames(muek1_df)= muek$Taxon

### it should be a square dataframe prefereably
# X = rep(x1,each = ncol(muek1_df))
# Y = rep(y2p,nrow(muek1_df))

a1 = nrow(z1)
a2 = ncol(z1)
a1a2 = a1*a2

### now unlisting and creating a new dataframe
z2 = matrix(unlist(z1), byrow=T,a1a2,1)
# z2 = as.data.frame(z2)
# colnames(z2)= "z2_list"
z2vec = as.vector(z2)
#m1 = which(z2vec >= 0.05)
#z2vec[m1]= 0.05


### creating a the required dataframe

# data1 = cbind(X,Y,z2vec)
# data1 = as.data.frame(data1)

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
  theme(plot.title = element_text(hjust = 0.5,face = "bold",size = 11),
        plot.subtitle = element_text(hjust = 0.5),
        axis.title = element_text(face = "bold"))
p + theme(axis.text.x = element_text(size=9 ,angle = 90),
          axis.text.y = element_text(size=9),
          panel.border = element_rect(colour = "black", fill = NA, size = 0.5)) 

