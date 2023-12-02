### CPG analysis

cpg_genome  = as.data.frame(cpg_genome)

### read genome fasta sequence

### Ask for user input of genomic GC

gc = readline(prompt= "Enter gc in percentage")
gc = as.numeric(gc)

### expected value of CpG
gc = 0.01*gc
gc_half = gc*0.5

## expected per bp
cpg_eb = (gc_half)^2
interval = cpg_genome$End- cpg_genome$Begin
cpg_exp = cpg_eb*interval
cpg_seq_ratio = cpg_genome$CpG/cpg_exp
cpg_genome1 = cbind(cpg_genome,interval,cpg_exp,cpg_seq_ratio)
cpg_genome1 = as.data.frame(cpg_genome1)


### filters liberal

interval_sz_df = cpg_genome1[which(cpg_genome1$interval >= 300),]
intgc_vec1 = which(interval_sz_df$`%CG`>=50,)
interval_sz_df = interval_sz_df[intgc_vec1,]
intgc_vec2 = which(interval_sz_df$cpg_seq_ratio >0.6)
interval_sz_df = interval_sz_df[intgc_vec2,]

### filters strict NCBI
### only difference in interval size

interval_sz_df1 = cpg_genome1[which(cpg_genome1$interval >= 500),]
intgc_vec1p = which(interval_sz_df1$`%CG`>=55,)
interval_sz_df1 = interval_sz_df1[intgc_vec1p,]
intgc_vec2p = which(interval_sz_df1$cpg_seq_ratio >0.6)
interval_sz_df1 = interval_sz_df1[intgc_vec2p,]


### join the overlapping regions together
## supply dummy coloumns to convert GRanges object

library(IRanges)
sz1 = interval_sz_df$Begin
sz1stop = interval_sz_df$End
pre_cpg_bed = cbind(sz1,sz1stop)
pre_cpg_bed = as.data.frame(pre_cpg_bed)
colnames(pre_cpg_bed)= c("start","stop")
pre_cpg_bed$start = as.vector(pre_cpg_bed$start)
pre_cpg_bed$start = as.numeric(pre_cpg_bed$start)
pre_cpg_bed$stop = as.vector(pre_cpg_bed$stop)
pre_cpg_bed$stop = as.numeric(pre_cpg_bed$stop)
pre_cpg_bed = pre_cpg_bed[which(pre_cpg_bed$stop>=pre_cpg_bed$start),]
cpg_bed = IRanges(pre_cpg_bed$start,pre_cpg_bed$stop)
cpg_bed = reduce(cpg_bed)
cpg_bed_mod = as.data.frame(cpg_bed)

### repeating for the stricter definition

library(IRanges)
sz1p = interval_sz_df1$Begin
sz1stop = interval_sz_df1$End
pre_cpg1_bed = cbind(sz1,sz1stop)
pre_cpg1_bed = as.data.frame(pre_cpg1_bed)
colnames(pre_cpg1_bed)= c("start","stop")
pre_cpg1_bed$start = as.vector(pre_cpg1_bed$start)
pre_cpg1_bed$start = as.numeric(pre_cpg1_bed$start)
pre_cpg1_bed$stop = as.vector(pre_cpg1_bed$stop)
pre_cpg1_bed$stop = as.numeric(pre_cpg1_bed$stop)
pre_cpg1_bed = pre_cpg1_bed[which(pre_cpg1_bed$stop>=pre_cpg1_bed$start),]
cpg1_bed = IRanges(pre_cpg1_bed$start,pre_cpg1_bed$stop)
cpg1_bed = reduce(cpg1_bed)
cpg1_bed_mod = as.data.frame(cpg1_bed)

### summate


cpg_size = sum(cpg_bed_mod$width) 
cpg1_size = sum(cpg1_bed_mod$width) 


### This will give you the net size of CpG island in the genome
### liberal

cpg_size

### strict
cpg1_size


### do code for the site
### code for site bed

subdf = as.data.frame(prep_file)
a1df = which(subdf$ref == "A")
a2df = which(subdf$mutant == "A")
c1df = which(subdf$ref == "C")
c2df = which(subdf$mutant == "C")
g1df = which(subdf$ref == "G")
g2df = which(subdf$mutant =="G")
t1df = which(subdf$ref =="T")
t2df = which(subdf$mutant == "T")
ts1 = intersect(a1df,g2df)
ts1p = intersect(a2df,g1df)
ts2 = intersect(c1df,t2df)
ts2p = intersect(c2df,t1df)
ts = c(ts1,ts1p,ts2,ts2p)
ts = unique(ts)
## tv
tv1 = intersect(a1df,c2df)
tv1p = intersect(a2df,c1df)
tv2 = intersect(a1df,t2df)
tv2p = intersect(a2df,t1df)
tv3 = intersect(c1df,a2df)
tv3p = intersect(c2df,a1df)
tv4 = intersect(c1df,g2df)
tv4p = intersect(c2df,g1df)
tv5 = intersect(g1df,c2df)
tv5p = intersect(g2df,c1df)
tv6 = intersect(g1df,t2df)
tv6p = intersect(g2df,t1df)
tv7 = intersect(t1df,a2df)
tv7p = intersect(t2df,a1df)
tv8 = intersect(t1df,g2df)
tv8p = intersect(t2df,g1df)
tv = c(tv1,tv1p,tv2,tv2p,tv3,tv3p,tv4,tv4p,tv5,tv5p,tv6,tv6p,
       tv7,tv7p,tv8,tv8p)
tv = unique(tv)
length(ts)
length(tv)
## writing mutation dataframes
ts_list = subdf[ts,]
tv_list = subdf[tv,]

## writing mutation files
library(openxlsx)
## start and stop
ts_list$pos = as.numeric(ts_list$pos)
tv_list$pos = as.numeric(tv_list$pos)
ts_start = ts_list$pos -250
ts_stop = ts_list$pos+251
tv_start = tv_list$pos-250
tv_stop = tv_list$pos+251
ts_bed = cbind(ts_list$identifier,ts_start,ts_stop)
tv_bed = cbind(tv_list$identifier,tv_start,tv_stop)
colnames(ts_bed) = c("identifier","start","stop")
colnames(tv_bed) = c("identifier","start","stop")
ts_bed = as.data.frame(ts_bed)
tv_bed = as.data.frame(tv_bed)
sub_bed = rbind(ts_bed,tv_bed)
sub_bed$start = as.numeric(sub_bed$start)
sub_bed$stop = as.numeric(sub_bed$stop)
write.xlsx(sub_bed, file = "sub501 bed.xlsx")





