### Figure 8
### Fig 8(a)


###libraries
library(ggplot2)
library(RColorBrewer)

##import as dataframe with only species labels
sbs6_corr = as.data.frame(sbs6_corr)

sbs6_corr1 = sbs6_corr[,-1]
muek =as.data.frame(sbs6_corr1)
rownames(muek)= sbs6_corr$Species
x1 = rownames(muek)
muek1 = muek
y2p = colnames(muek)
z1 = as.vector(muek1)
muek1_df = as.data.frame(muek1)
a1 = nrow(muek1)
a2 = ncol(muek1)
a1a2 = a1*a2
### now unlisting and creating a new dataframe

z2 <- matrix(unlist(z1), nrow = a1, ncol = a2, byrow = FALSE, dimnames = NULL)
# z2 = as.data.frame(z2)
# colnames(z2)= "z2_list"
z2vec = as.vector(z2)
### another way to create the required df
data2 = expand.grid(X = x1, Y = y2p)
data2$Z = z2vec
Z_val = data2$Z
colnames(data2) = c("Species","SBS6","Frequency")

### reverse at this step for exchanging
p = ggplot(data2, aes(SBS6, Species , fill= Frequency)) +
  geom_tile()+
  scale_fill_gradient(low="white", high="red")+
  theme_classic()+
  ggtitle(label = "SBS6 (Leading strand)",subtitle = "Prokaryotes")+
  theme(plot.title = element_text(hjust = 0.5,face = "bold",size = 9),
        plot.subtitle = element_text(hjust = 0.5, face = "italic",size = 8),
        axis.title = element_text(size = 8),
        legend.title = element_text(size = 5.5,face = "bold"),
        legend.key.size = unit(0.4,"cm"),
        legend.text = element_text(size = 4.5))+
  xlab(label = "SBS6 spectrum")
p + theme(axis.text.y = element_text(size= 7 ,angle = 0,face = "italic"),
          panel.border = element_rect(colour = "black", fill = NA, size = 0.5),
          axis.text.x = element_text(size = 7,angle = 90))

png(filename = "sbs6 lead.png",res = 300, h=1500,w=1500)
print(p)
dev.off()




### Fig 8(b)


###libraries
library(ggplot2)
library(RColorBrewer)

##import as dataframe with only species labels
sbs6_corr = as.data.frame(sbs6_corr)

sbs6_corr1 = sbs6_corr[,-1]
muek =as.data.frame(sbs6_corr1)
rownames(muek)= sbs6_corr$Species
x1 = rownames(muek)
muek1 = muek
y2p = colnames(muek)
z1 = as.vector(muek1)
muek1_df = as.data.frame(muek1)
a1 = nrow(muek1)
a2 = ncol(muek1)
a1a2 = a1*a2
### now unlisting and creating a new dataframe

z2 <- matrix(unlist(z1), nrow = a1, ncol = a2, byrow = FALSE, dimnames = NULL)
# z2 = as.data.frame(z2)
# colnames(z2)= "z2_list"
z2vec = as.vector(z2)
### another way to create the required df
data2 = expand.grid(X = x1, Y = y2p)
data2$Z = z2vec
Z_val = data2$Z
colnames(data2) = c("Species","SBS6","Frequency")

### reverse at this step for exchanging
p = ggplot(data2, aes(SBS6, Species , fill= Frequency)) +
  geom_tile()+
  scale_fill_gradient(low="white", high="red")+
  theme_classic()+
  ggtitle(label = "SBS6 (Lagging strand)",subtitle = "Prokaryotes")+
  theme(plot.title = element_text(hjust = 0.5,face = "bold",size = 9),
        plot.subtitle = element_text(hjust = 0.5, face = "italic",size = 8),
        axis.title = element_text(size = 8),
        legend.title = element_text(size = 5.5,face = "bold"),
        legend.key.size = unit(0.4,"cm"),
        legend.text = element_text(size = 4.5))+
  xlab(label = "SBS6 spectrum")
p + theme(axis.text.y = element_text(size= 7 ,angle = 0,face = "italic"),
          panel.border = element_rect(colour = "black", fill = NA, size = 0.5),
          axis.text.x = element_text(size = 7,angle = 90))

png(filename = "sbs6 lag.png",res = 300, h=1500,w=1500)
print(p)
dev.off()



### Fig 8(c)


###libraries
library(ggplot2)
library(RColorBrewer)

##import as dataframe with only species labels
sbs6_corr = as.data.frame(sbs6_corr)

sbs6_corr1 = sbs6_corr[,-1]
muek =as.data.frame(sbs6_corr1)
rownames(muek)= sbs6_corr$Species
x1 = rownames(muek)
muek1 = muek
y2p = colnames(muek)
z1 = as.vector(muek1)
muek1_df = as.data.frame(muek1)
a1 = nrow(muek1)
a2 = ncol(muek1)
a1a2 = a1*a2
### now unlisting and creating a new dataframe

z2 <- matrix(unlist(z1), nrow = a1, ncol = a2, byrow = FALSE, dimnames = NULL)
# z2 = as.data.frame(z2)
# colnames(z2)= "z2_list"
z2vec = as.vector(z2)
### another way to create the required df
data2 = expand.grid(X = x1, Y = y2p)
data2$Z = z2vec
Z_val = data2$Z
colnames(data2) = c("Species","SBS6","Frequency")

### reverse at this step for exchanging
p = ggplot(data2, aes(SBS6, Species , fill= Frequency)) +
  geom_tile()+
  scale_fill_gradient(low="white", high="red")+
  theme_classic()+
  ggtitle(label = "SBS12 (Leading strand)",subtitle = "Prokaryotes")+
  theme(plot.title = element_text(hjust = 0.5,face = "bold",size = 9),
        plot.subtitle = element_text(hjust = 0.5, face = "italic",size = 8),
        axis.title = element_text(size = 8),
        legend.title = element_text(size = 5.5,face = "bold"),
        legend.key.size = unit(0.4,"cm"),
        legend.text = element_text(size = 4.5))+
  xlab(label = "SBS12 spectrum")
p + theme(axis.text.y = element_text(size= 7 ,angle = 0,face = "italic"),
          panel.border = element_rect(colour = "black", fill = NA, size = 0.5),
          axis.text.x = element_text(size = 7,angle = 90))

png(filename = "sbs12 lead.png",res = 300, h=1500,w=1500)
print(p)
dev.off()




### Fig 8(d)


###libraries
library(ggplot2)
library(RColorBrewer)

##import as dataframe with only species labels
sbs6_corr = as.data.frame(sbs6_corr)

sbs6_corr1 = sbs6_corr[,-1]
muek =as.data.frame(sbs6_corr1)
rownames(muek)= sbs6_corr$Species
x1 = rownames(muek)
muek1 = muek
y2p = colnames(muek)
z1 = as.vector(muek1)
muek1_df = as.data.frame(muek1)
a1 = nrow(muek1)
a2 = ncol(muek1)
a1a2 = a1*a2
### now unlisting and creating a new dataframe

z2 <- matrix(unlist(z1), nrow = a1, ncol = a2, byrow = FALSE, dimnames = NULL)
# z2 = as.data.frame(z2)
# colnames(z2)= "z2_list"
z2vec = as.vector(z2)
### another way to create the required df
data2 = expand.grid(X = x1, Y = y2p)
data2$Z = z2vec
Z_val = data2$Z
colnames(data2) = c("Species","SBS6","Frequency")

### reverse at this step for exchanging
p = ggplot(data2, aes(SBS6, Species , fill= Frequency)) +
  geom_tile()+
  scale_fill_gradient(low="white", high="red")+
  theme_classic()+
  ggtitle(label = "SBS12 (Lagging strand)",subtitle = "Prokaryotes")+
  theme(plot.title = element_text(hjust = 0.5,face = "bold",size = 9),
        plot.subtitle = element_text(hjust = 0.5, face = "italic",size = 8),
        axis.title = element_text(size = 8),
        legend.title = element_text(size = 5.5,face = "bold"),
        legend.key.size = unit(0.4,"cm"),
        legend.text = element_text(size = 4.5))+
  xlab(label = "SBS12 spectrum")
p <- p + theme(axis.text.y = element_text(size= 7 ,angle = 0,face = "italic"),
          panel.border = element_rect(colour = "black", fill = NA, size = 0.5),
          axis.text.x = element_text(size = 7,angle = 90))

png(filename = "sbs12 lag.png",res = 300, h=1500,w=1500)
print(p)
dev.off()

