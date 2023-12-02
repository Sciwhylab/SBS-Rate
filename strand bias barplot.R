### Strand bias barplots

### Figure (a)

llg = as.data.frame(lead_lag_fair)

df_leading = llg$`fraction(leading)`*100
df_lagging = llg$`fraction(lagging)`*100
df_snm = c(df_leading,df_lagging)
df_lead_lab = rep("leading",length(df_leading))
df_lag_lab = rep("lagging",length(df_lagging))
df_strand_lab = c(df_lead_lab,df_lag_lab)
df_species = c(llg$Species,llg$Species)
df2 = cbind(df_species,df_strand_lab,df_snm)
df2 = as.data.frame(df2)
colnames(df2) = c("species","strand","snm")
df2$snm = as.numeric(df2$snm)

## loading libraries
library(ggplot2)
library(RColorBrewer)

p = ggplot(data = df2, aes(x= species,y= snm,fill= strand))+
  geom_bar(position = "dodge", stat = "identity",width = 0.75)+
  ggtitle(label = "Strand bias in SNMs", subtitle = "Prokaryotes")+
  theme(plot.title = element_text(hjust = 0.5, size = 14, face = "bold"),
        axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1,face = "italic"),
        plot.subtitle = element_text(hjust = 0.5,size = 12))+
  xlab(label = "Species")+
  ylab(label = "percentage of SNMs (%)")+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10))

### t test
t.test(llg$`fraction(leading)`,llg$`fraction(lagging)`)
### P value is 0.1453
### P
p+annotate(geom = 'text', 
           label = 'P = 0.1453 (Student t.test)',
           x = -Inf, y = Inf, 
           hjust = 0, vjust = 1,
           fontface = "italic")


### Figure (b)

llg = as.data.frame(lead_lag_fair)

df_leading = llg$`AT Bias (leading)`
df_lagging = llg$`AT Bias (lagging)`
df_snm = c(df_leading,df_lagging)
df_lead_lab = rep("leading",length(df_leading))
df_lag_lab = rep("lagging",length(df_lagging))
df_strand_lab = c(df_lead_lab,df_lag_lab)
df_species = c(llg$Species,llg$Species)
df2 = cbind(df_species,df_strand_lab,df_snm)
df2 = as.data.frame(df2)
colnames(df2) = c("species","strand","atb")
df2$atb = as.numeric(df2$atb)

## loading libraries
library(ggplot2)
library(RColorBrewer)

p = ggplot(data = df2, aes(x= species,y= atb,fill= strand))+
  geom_bar(position = "dodge", stat = "identity",width = 0.75)+
  ggtitle(label = "AT bias of leading vs lagging strands", subtitle = "Prokaryotes")+
  theme(plot.title = element_text(hjust = 0.5, size = 14, face = "bold"),
        axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1,face = "italic"),
        plot.subtitle = element_text(hjust = 0.5,size = 12))+
  xlab(label = "Species")+
  ylab(label = "AT bias")+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10))

### t test
t.test(llg$`AT Bias (leading)`,llg$`AT Bias (lagging)`)
### P value is 0.8985
### P
p+annotate(geom = 'text', 
           label = 'P = 0.8985 (Student t.test)',
           x = -Inf, y = Inf, 
           hjust = 0, vjust = 1,
           fontface = "italic")



