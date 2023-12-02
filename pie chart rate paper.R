library(ggplot2)
df1 = as.data.frame(datasets_summary_new)

### making a barplot first
bp2<- ggplot(df1, aes(x="", y= datasets,fill = Reason))+
  geom_bar(width = 0.75, stat = "identity")
bp2

##making pie chart

pie2 <- bp2 + coord_polar("y", start=0)+
  ggtitle(label = "Rejected datasets",subtitle = "Reasons for rejection")+
  theme(plot.title = element_text(hjust = 0.5, size = 14,face = "bold"),
        axis.text.y = element_text(size = 0.5,vjust = 0.5,hjust = 0.5,angle = 60),
        axis.text.x = element_text(size = 0.5,vjust = 0.5,hjust = 0.5,angle = 60),
        plot.subtitle = element_text(hjust = 0.5,size = 12),
        legend.text = element_text(size = 9.5,face = "bold"))+
  xlab(label = NULL)+
  ylab(label = NULL)+
  scale_fill_brewer(palette = "Set2")+
  geom_text(aes(label = datasets),position = position_stack(vjust = 0.5))
pie2

### Taxon plots

library(ggplot2)
df1 = as.data.frame(datasets_summary_new)

### making a barplot first
bp2<- ggplot(df1, aes(x="", y= datasets,fill = Taxon))+
  geom_bar(width = 0.75, stat = "identity")
bp2

##making pie chart

pie2 <- bp2 + coord_polar("y", start=0)+
  ggtitle(label = "Accepted datasets",subtitle = "Taxon I")+
  theme(plot.title = element_text(hjust = 0.5, size = 14,face = "bold"),
        axis.text.y = element_text(size = 0.5,vjust = 0.5,hjust = 0.5,angle = 60),
        axis.text.x = element_text(size = 0.5,vjust = 0.5,hjust = 0.5,angle = 60),
        plot.subtitle = element_text(hjust = 0.5,size = 12),
        legend.text = element_text(size = 9.5,face = "bold"))+
  xlab(label = NULL)+
  ylab(label = NULL)+
  scale_fill_brewer(palette = "Set2")+
  geom_text(aes(label = datasets),position = position_stack(vjust = 0.5))
pie2

### Taxon plots

library(ggplot2)
df1 = as.data.frame(datasets_summary_new)

### making a barplot first
bp2<- ggplot(df1, aes(x="", y= datasets,fill = Taxon))+
  geom_bar(width = 0.75, stat = "identity")
bp2

##making pie chart

pie2 <- bp2 + coord_polar("y", start=0)+
  ggtitle(label = "Accepted datasets",subtitle = "Taxon II")+
  theme(plot.title = element_text(hjust = 0.5, size = 14,face = "bold"),
        axis.text.y = element_text(size = 0.5,vjust = 0.5,hjust = 0.5,angle = 60),
        axis.text.x = element_text(size = 0.5,vjust = 0.5,hjust = 0.5,angle = 60),
        plot.subtitle = element_text(hjust = 0.5,size = 12),
        legend.text = element_text(size = 9.5,face = "bold"))+
  xlab(label = NULL)+
  ylab(label = NULL)+
  scale_fill_brewer(palette = "Set2")+
  geom_text(aes(label = datasets),position = position_stack(vjust = 0.5))
pie2
