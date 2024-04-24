### boxplot codes
### figure 3
### Genome size ( 3(a))

tab_dfnew = as.data.frame(tab_dfnew)

tab_df = cbind(tab_dfnew$Label1,log(tab_dfnew$`Genome size`))
tab_df = as.data.frame(tab_df)
colnames(tab_df)= c("label","value")
tab_df$value = as.numeric(tab_df$value)
tab_df = na.omit(tab_df)

### libraries
library(ggplot2)
library(RColorBrewer)
library(viridis)
library(tibble)
library(dplyr)



p<-ggplot(tab_df, aes(x= label, y=value)) +
  geom_boxplot(outlier.colour = "red",color = "blue")+
  theme(legend.position = "right",
        plot.title = element_text(hjust = 0.5, size = 11.5),
        axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
  ggtitle(label = "Genome size")+
  xlab(label = "Taxon I")+
  ylab(label = "Log Genome size (MB)")+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 8))
  

p1 <- p +
  annotate(
    "text",
    x = 1, # X-coordinate for the annotation
    y = max(tab_df$value), # Y-coordinate for the annotation
    label = "P<2.2e-16",
    color = "black",
    size = 3.5,
    hjust = -1,
    vjust = 1,
    fontface = "italic")
p1

ggsave(filename = "gsz_taxonI.png",dpi = 350)

### Genome GC (3(b))
tab_dfnew = as.data.frame(tab_dfnew)

tab_df = cbind(tab_dfnew$Label1,tab_dfnew$`Genomic GC`)
tab_df = as.data.frame(tab_df)
colnames(tab_df)= c("label","value")
tab_df$value = as.numeric(tab_df$value)
tab_df = na.omit(tab_df)

### libraries
library(ggplot2)
library(RColorBrewer)
library(viridis)
library(tibble)
library(dplyr)



p<-ggplot(tab_df, aes(x= label, y=value)) +
  geom_boxplot(outlier.colour = "red",color = "blue")+
  theme(legend.position = "right",
        plot.title = element_text(hjust = 0.5, size = 11.5),
        axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
  ggtitle(label = "Genome GC")+
  xlab(label = "Taxon I")+
  ylab(label = "Genomic GC(%)")+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 8))


p1 <- p +
  annotate(
    "text",
    x = 1, # X-coordinate for the annotation
    y = max(tab_df$value), # Y-coordinate for the annotation
    label = "P = 1.3e-08",
    color = "black",
    size = 3.5,
    hjust = -1,
    vjust = 1,
    fontface = "italic")
p1

ggsave(filename = "gc_taxonI.png",dpi = 350)


### Genomic repeat fraction (3(c))

tab_dfnew = as.data.frame(tab_dfnew)

tab_df = cbind(tab_dfnew$Label1,tab_dfnew$`Genomic repeat fraction`)
tab_df = as.data.frame(tab_df)
colnames(tab_df)= c("label","value")
tab_df$value = as.numeric(tab_df$value)
tab_df = na.omit(tab_df)

### libraries
library(ggplot2)
library(RColorBrewer)
library(viridis)
library(tibble)
library(dplyr)



p<-ggplot(tab_df, aes(x= label, y=value)) +
  geom_boxplot(outlier.colour = "red",color = "blue")+
  theme(legend.position = "right",
        plot.title = element_text(hjust = 0.5, size = 11.5),
        axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
  ggtitle(label = "Genome repeat fraction")+
  xlab(label = "Taxon I")+
  ylab(label = "Genomic repeat fraction (%)")+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 8))


p1 <- p +
  annotate(
    "text",
    x = 1, # X-coordinate for the annotation
    y = max(tab_df$value), # Y-coordinate for the annotation
    label = "P = 3.9e-12",
    color = "black",
    size = 3.5,
    hjust = -0.5,
    vjust = 1,
    fontface = "italic")
p1

ggsave(filename = "rf_taxonI.png",dpi = 350)

### coding genes (3(d))

tab_dfnew = as.data.frame(tab_dfnew)

tab_df = cbind(tab_dfnew$Label1,tab_dfnew$coding)
tab_df = as.data.frame(tab_df)
colnames(tab_df)= c("label","value")
tab_df$value = as.numeric(tab_df$value)
tab_df = na.omit(tab_df)

### libraries
library(ggplot2)
library(RColorBrewer)
library(viridis)
library(tibble)
library(dplyr)



p<-ggplot(tab_df, aes(x= label, y=value)) +
  geom_boxplot(outlier.colour = "red",color = "blue")+
  theme(legend.position = "right",
        plot.title = element_text(hjust = 0.5, size = 11.5),
        axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
  ggtitle(label = "Coding genes")+
  xlab(label = "Taxon I")+
  ylab(label = "Number of coding genes")+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 8))


p1 <- p +
  annotate(
    "text",
    x = 1, # X-coordinate for the annotation
    y = max(tab_df$value), # Y-coordinate for the annotation
    label = "P <2.2e-16",
    color = "black",
    size = 3.5,
    hjust = -1,
    vjust = 1,
    fontface = "italic")
p1

ggsave(filename = "cod_taxonI.png",dpi = 350)

### gene count (3(e))

tab_dfnew = as.data.frame(tab_dfnew)

tab_df = cbind(tab_dfnew$Label1,tab_dfnew$`gene count`)
tab_df = as.data.frame(tab_df)
colnames(tab_df)= c("label","value")
tab_df$value = as.numeric(tab_df$value)
tab_df = na.omit(tab_df)

### libraries
library(ggplot2)
library(RColorBrewer)
library(viridis)
library(tibble)
library(dplyr)



p<-ggplot(tab_df, aes(x= label, y=value)) +
  geom_boxplot(outlier.colour = "red",color = "blue")+
  theme(legend.position = "right",
        plot.title = element_text(hjust = 0.5, size = 11.5),
        axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
  ggtitle(label = "Gene count")+
  xlab(label = "Taxon I")+
  ylab(label = "gene count")+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 8))


p1 <- p +
  annotate(
    "text",
    x = 1, # X-coordinate for the annotation
    y = max(tab_df$value), # Y-coordinate for the annotation
    label = "P <2.2e-16",
    color = "black",
    size = 3.5,
    hjust = -1,
    vjust = 1,
    fontface = "italic")
p1

ggsave(filename = "tot_taxonI.png",dpi = 350)


### SNM rate (3(e))

tab_dfnew = as.data.frame(tab_dfnew)

tab_df = cbind(tab_dfnew$Label1,log10(tab_dfnew$`SNM rate`))
tab_df = as.data.frame(tab_df)
colnames(tab_df)= c("label","value")
tab_df$value = as.numeric(tab_df$value)
tab_df = na.omit(tab_df)

### libraries
library(ggplot2)
library(RColorBrewer)
library(viridis)
library(tibble)
library(dplyr)



p<-ggplot(tab_df, aes(x= label, y=value)) +
  geom_boxplot(outlier.colour = "red",color = "blue")+
  theme(legend.position = "right",
        plot.title = element_text(hjust = 0.5, size = 11.5),
        axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
  ggtitle(label = "SNM rate")+
  xlab(label = "Taxon I")+
  ylab(label = "log SNM rate(/bp/gen)")+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 8))


p1 <- p +
  annotate(
    "text",
    x = 1, # X-coordinate for the annotation
    y = max(tab_df$value), # Y-coordinate for the annotation
    label = "P = 1e-06",
    color = "black",
    size = 3.5,
    hjust = -1,
    vjust = 1,
    fontface = "italic")
p1

ggsave(filename = "snm_taxonI.png",dpi = 350)


### figure 4
### Genome size ( 4(a))

tab_dfnew = as.data.frame(tab_dfnew)

tab_df = cbind(tab_dfnew$Label2,log(tab_dfnew$G.size))
tab_df = as.data.frame(tab_df)
colnames(tab_df)= c("label","value")
tab_df$value = as.numeric(tab_df$value)
tab_df = na.omit(tab_df)

### libraries
library(ggplot2)
library(RColorBrewer)
library(viridis)
library(tibble)
library(dplyr)



p<-ggplot(tab_df, aes(x= label, y=value)) +
  geom_boxplot(outlier.colour = "red",color = "blue")+
  theme(legend.position = "right",
        plot.title = element_text(hjust = 0.5, size = 11.5),
        axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
  ggtitle(label = "Genome size")+
  xlab(label = "Taxon II")+
  ylab(label = "Log Genome size (MB)")+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 8))


p1 <- p +
  annotate(
    "text",
    x = 1, # X-coordinate for the annotation
    y = max(tab_df$value), # Y-coordinate for the annotation
    label = "P<2.2e-16",
    color = "black",
    size = 3.5,
    hjust = -1,
    vjust = 1,
    fontface = "italic")
p1

ggsave(filename = "gsz_taxonII.png",dpi = 350)

### Genome GC (4(b))
tab_dfnew = as.data.frame(tab_dfnew)

tab_df = cbind(tab_dfnew$Label2,tab_dfnew$`G.GC%`)
tab_df = as.data.frame(tab_df)
colnames(tab_df)= c("label","value")
tab_df$value = as.numeric(tab_df$value)
tab_df = na.omit(tab_df)

### libraries
library(ggplot2)
library(RColorBrewer)
library(viridis)
library(tibble)
library(dplyr)



p<-ggplot(tab_df, aes(x= label, y=value)) +
  geom_boxplot(outlier.colour = "red",color = "blue")+
  theme(legend.position = "right",
        plot.title = element_text(hjust = 0.5, size = 11.5),
        axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
  ggtitle(label = "Genome GC")+
  xlab(label = "Taxon II")+
  ylab(label = "Genomic GC(%)")+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 8))


p1 <- p +
  annotate(
    "text",
    x = 1, # X-coordinate for the annotation
    y = max(tab_df$value), # Y-coordinate for the annotation
    label = "P = 0.00128",
    color = "black",
    size = 3.5,
    hjust = -1,
    vjust = 1,
    fontface = "italic")
p1

ggsave(filename = "gc_taxonII.png",dpi = 350)


### Genomic repeat fraction (4(c))

tab_dfnew = as.data.frame(tab_dfnew)

tab_df = cbind(tab_dfnew$Label2,tab_dfnew$`Genomic repeat fraction`)
tab_df = as.data.frame(tab_df)
colnames(tab_df)= c("label","value")
tab_df$value = as.numeric(tab_df$value)
tab_df = na.omit(tab_df)

### libraries
library(ggplot2)
library(RColorBrewer)
library(viridis)
library(tibble)
library(dplyr)



p<-ggplot(tab_df, aes(x= label, y=value)) +
  geom_boxplot(outlier.colour = "red",color = "blue")+
  theme(legend.position = "right",
        plot.title = element_text(hjust = 0.5, size = 11.5),
        axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
  ggtitle(label = "Genome repeat fraction")+
  xlab(label = "Taxon II")+
  ylab(label = "Genomic repeat fraction (%)")+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 8))


p1 <- p +
  annotate(
    "text",
    x = 1, # X-coordinate for the annotation
    y = max(tab_df$value), # Y-coordinate for the annotation
    label = "P = 1.68e-05",
    color = "black",
    size = 3.5,
    hjust = -0.5,
    vjust = 1,
    fontface = "italic")
p1

ggsave(filename = "rf_taxonII.png",dpi = 350)

### coding genes (4(d))

tab_dfnew = as.data.frame(tab_dfnew)

tab_df = cbind(tab_dfnew$Label2,tab_dfnew$coding)
tab_df = as.data.frame(tab_df)
colnames(tab_df)= c("label","value")
tab_df$value = as.numeric(tab_df$value)
tab_df = na.omit(tab_df)

### libraries
library(ggplot2)
library(RColorBrewer)
library(viridis)
library(tibble)
library(dplyr)



p<-ggplot(tab_df, aes(x= label, y=value)) +
  geom_boxplot(outlier.colour = "red",color = "blue")+
  theme(legend.position = "right",
        plot.title = element_text(hjust = 0.5, size = 11.5),
        axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
  ggtitle(label = "Coding genes")+
  xlab(label = "Taxon II")+
  ylab(label = "Number of coding genes")+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 8))


p1 <- p +
  annotate(
    "text",
    x = 1, # X-coordinate for the annotation
    y = max(tab_df$value), # Y-coordinate for the annotation
    label = "P <2.2e-16",
    color = "black",
    size = 3.5,
    hjust = -1,
    vjust = 1,
    fontface = "italic")
p1

ggsave(filename = "cod_taxonII.png",dpi = 350)

### gene count (4(e))

tab_dfnew = as.data.frame(tab_dfnew)

tab_df = cbind(tab_dfnew$Label2,tab_dfnew$`gene count`)
tab_df = as.data.frame(tab_df)
colnames(tab_df)= c("label","value")
tab_df$value = as.numeric(tab_df$value)
tab_df = na.omit(tab_df)

### libraries
library(ggplot2)
library(RColorBrewer)
library(viridis)
library(tibble)
library(dplyr)



p<-ggplot(tab_df, aes(x= label, y=value)) +
  geom_boxplot(outlier.colour = "red",color = "blue")+
  theme(legend.position = "right",
        plot.title = element_text(hjust = 0.5, size = 11.5),
        axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
  ggtitle(label = "Gene count")+
  xlab(label = "Taxon II")+
  ylab(label = "gene count")+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 8))


p1 <- p +
  annotate(
    "text",
    x = 1, # X-coordinate for the annotation
    y = max(tab_df$value), # Y-coordinate for the annotation
    label = "P <2.2e-16",
    color = "black",
    size = 3.5,
    hjust = -1,
    vjust = 1,
    fontface = "italic")
p1

ggsave(filename = "tot_taxonII.png",dpi = 350)


### SNM rate (4(e))

tab_dfnew = as.data.frame(tab_dfnew)

tab_df = cbind(tab_dfnew$Label2,log10(tab_dfnew$`SNM rate`))
tab_df = as.data.frame(tab_df)
colnames(tab_df)= c("label","value")
tab_df$value = as.numeric(tab_df$value)
tab_df = na.omit(tab_df)

### libraries
library(ggplot2)
library(RColorBrewer)
library(viridis)
library(tibble)
library(dplyr)



p<-ggplot(tab_df, aes(x= label, y=value)) +
  geom_boxplot(outlier.colour = "red",color = "blue")+
  theme(legend.position = "right",
        plot.title = element_text(hjust = 0.5, size = 11.5),
        axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
  ggtitle(label = "SNM rate")+
  xlab(label = "Taxon II")+
  ylab(label = "log SNM rate(/bp/gen)")+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 8))


p1 <- p +
  annotate(
    "text",
    x = 1, # X-coordinate for the annotation
    y = max(tab_df$value), # Y-coordinate for the annotation
    label = "P = 1.06e-06",
    color = "black",
    size = 3.5,
    hjust = -1,
    vjust = 1,
    fontface = "italic")
p1

ggsave(filename = "snm_taxonII.png",dpi = 350)

