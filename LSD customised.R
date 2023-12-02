### LSD customised
tab_df = as.data.frame(tab_df)

### replacing values in dataframe
which(tab_df$Label == "nematodes")

### stringr package
library(stringr)
tab_df$Label = str_replace_all(tab_df$Label,"nematodes","Ar&N*")
tab_df$Label = str_replace_all(tab_df$Label,"Arthropods","Ar&N*")
tab_df$Label = str_replace_all(tab_df$Label,"protists","Protista")
tab_df$Label = str_replace_all(tab_df$Label,"plants","Plants")
tab_df$Label = str_replace_all(tab_df$Label,"mitochondria","Mitochondria")

### some data preprocessing steps unique to this problem
### log scale of rate and genome size

tab_df$rate = log10(tab_df$rate)


### use appropriate colnames
colnames(tab_df)[4] = "G_size"
colnames(tab_df)[8] = "rate"

tab_df$rate = log10(tab_df$rate)


### ANOVA test

model_rate = aov(rate ~ Label, data = tab_df )
summary(model_rate)
### wont work
p = summary(model_rate)
p_df = data.frame(p)
##these wont work

# model_rate_mat = as.matrix(summary(model_rate))
# model_rate_df = as.data.frame(model_rate_mat)

## you cant write it to excel either

### LSD Test
out <- LSD.test(model_rate,"Label", p.adj="bonferroni")
# Variation range: max and min
plot(out)

##
out_df = out$means
out_df1 = out$groups
outdf_fl = cbind(out_df,out_df1)
outdf_fl = as.data.frame(outdf_fl)

### size
out_sz <- LSD.test(model_size,"Label", p.adj="bonferroni")
out_sz_df = out_sz$means
out_sz_df1 = out_sz$groups
out_sz_df_fl = cbind(out_sz_df,out_sz_df1)
out_sz_df_fl = as.data.frame(out_sz_df_fl)

### GC
out_gc <- LSD.test(model_GC,"Label", p.adj="bonferroni")
out_gc_df = out_gc$means
out_gc_df1 = out_gc$groups
out_gc_df_fl = cbind(out_gc_df,out_gc_df1)
out_gc_df_fl = as.data.frame(out_gc_df_fl)

### writing excel sheets
library(openxlsx)
write.xlsx(outdf_fl, file = "rate.xlsx")
write.xlsx(out_sz_df, file = "size.xlsx")
write.xlsx(out_gc_df, file = "gc.xlsx")