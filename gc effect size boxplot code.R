#### GC effect size boxplot code

gcp = as.data.frame(GC_effect_size_prokaryotes)
gcp_eff_vec = c(gcp$nt1,gcp$nt3,gcp$nt5,gcp$nt11,gcp$nt21,gcp$nt51,gcp$nt101,gcp$nt201)
vec1 = rep("nt1",length(gcp$nt1))
vec3 = rep("nt3",length(gcp$nt3))
vec5 = rep("nt5",length(gcp$nt5))
vec11 = rep("nt11",length(gcp$nt11))
vec21 = rep("nt21",length(gcp$nt21))
vec51 = rep("n51",length(gcp$nt51))
vec101 = rep("nt101",length(gcp$nt101))
vec201 = rep("nt201",length(gcp$nt201))

gcp_lab_vec = c(vec1,vec3,vec5,vec11,vec21,vec51,vec101,vec201)
gcp_df = cbind(gcp_lab_vec,gcp_eff_vec)
gcp_df = as.data.frame(gcp_df)
colnames(gcp_df)= c ("label","value")
gcp_df$value = as.numeric(gcp_df$value)

### libraries

library(ggplot2)
library(RColorBrewer)
library(viridis)
library(tibble)
library(dplyr)
library(ggpubr)


# Create a boxplot using ggboxplot
p = ggboxplot(gcp_df, x = "label", y = "value",
          ylab = "Effect size (Cohen's D)",
          xlab = "Window size",
          title = "GC effect size across windows")+
  labs(subtitle = "Prokaryotes")+
  theme(title = element_text(size = 12,face = "bold",hjust = 0.5),
        plot.subtitle = element_text(hjust = 0.5),
        plot.background = element_rect(fill = "white",colour = "grey"),
        axis.text.x = element_text(angle = 90))
