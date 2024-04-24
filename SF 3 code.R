## umap customised final
### first image

library(umap)
library(tidyverse)
library(ggplot2)
library(dplyr)

### the last col has label, removing the label

rf = as.data.frame(tab_dfnew)
rf = na.omit(tab_dfnew)
rf = rf[,-1]

rf.data <- rf[,c(2:6)]

### scale if required
rf.data <- scale(rf.data)


## label vector
rf.labels <- rf[, "Label1"]

### applying uMAP transformation
rf.umap <- umap(rf.data)

### generating dataframe

rf.umap_df = as.data.frame(rf.umap$layout)
rf.umap_df = cbind(rf.umap_df,rf.labels)
colnames(rf.umap_df) = c("UMAP1","UMAP2","Label")

### another function that makes use of ggplot
p = rf.umap_df %>%
  ggplot(aes(x = UMAP1, 
             y = UMAP2, 
             color = Label))+
  geom_point(size = 1.1)+
  labs(x = "UMAP1",
       y = "UMAP2",
       title = "UMAP plot Genomic Parameters ",
       subtitle = "Taxon I")+
  theme(title = element_text(hjust = 0.5,size = 10),
        plot.subtitle = element_text(hjust = 0.5, size = 10),
        legend.title = element_text(color = "black", size = 05.5),
        legend.text = element_text(color = "black", size = 06.5,face = "italic"),
        legend.position = "top",
        axis.title = element_text(size = 10))

png(filename = "umap taxon I.png",res = 300, h=1500,w=1500)
print(p)
dev.off()

### 2nd figure

### the last col has label, removing the label

rf = as.data.frame(tab_dfnew)
rf = na.omit(tab_dfnew)
rf = rf[,-2]

rf.data <- rf[,c(2:6)]

### scale if required
rf.data <- scale(rf.data)


## label vector
rf.labels <- rf[, "Label2"]

### applying uMAP transformation
rf.umap <- umap(rf.data)

### generating dataframe

rf.umap_df = as.data.frame(rf.umap$layout)
rf.umap_df = cbind(rf.umap_df,rf.labels)
colnames(rf.umap_df) = c("UMAP1","UMAP2","Label")

### another function that makes use of ggplot
p = rf.umap_df %>%
  ggplot(aes(x = UMAP1, 
             y = UMAP2, 
             color = Label))+
  geom_point(size = 1.1)+
  labs(x = "UMAP1",
       y = "UMAP2",
       title = "UMAP plot Genomic Parameters ",
       subtitle = "Taxon II")+
  theme(title = element_text(hjust = 0.5,size = 10),
        plot.subtitle = element_text(hjust = 0.5, size = 10),
        legend.title = element_text(color = "black", size = 05.5),
        legend.text = element_text(color = "black", size = 06.5,face = "italic"),
        legend.position = "top",
        axis.title = element_text(size = 10))

png(filename = "umap taxon II.png",res = 300, h=1500,w=1500)
print(p)
dev.off()

