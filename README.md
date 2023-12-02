# SBS-Rate
This repository accompanies the paper - "Global and local genomic features together modulate the spontaneous single nucleotide  mutation rate"

It has data sheets for global genomic features - Genome size, Genomic GC , Genomic repeat fraction , Number of coding genes and Gene count and
local genomic features - local genomic GC , local repeat content, CpG islands and SNM rates
The data files for stand bias in SNMs and file for the SBS (SBS6 & SBS12) spectrum are also available.


### flowchart paper
This code uses package DiagrammeR. It generates the flowchart which shows the data selection from the data obtained from literature

### pie chart paper
It generates the pie charts generated in the Supplementary Figure 1

### multiple histogram paper 
It generates the distribution of global genomic features and SNM rates as shown in Supplementary Figure2
Uses ggplot2 and ggpubr package
The raw file which was used for ANOVA and shown in Supplementary sections of paper

### UMAP plot
To visualise the uniform manifold approximation distribution of species based on their genomic parameters (Supplementary Figure 3)
Needs the data file of genomic parameters as input, please remove SNM rates coloumn before running the code

### LSD test
Geerates ANOVA and LSD test results. Takes datafile of genomic parameters and local parameters as input.
Each feature/parameter needs to be done individually , one at a time.

### corrplot taxon I and taxon II code
generates the correlation heatmap as shown in Figure 5(a) and 5 (c) of the paper
Takes the correlatiom matrix as input

### Taxonwise LogP
This generates Figure 6 of the paper. Uses ggplot2 and takes the datafile of global genomic feature as input

### strand bias barplot
It generates barplots of figure 7 (a) and 7(b). It takes datafile of strand bias as input






