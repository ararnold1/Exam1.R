#exam1.R

#Question 1:

#Load library affy, GEOquery, limma

library(affy)
library(GEOquery)
library(limma)

setwd("/Users/Amanda/Desktop/EXAM")

gse <- read.AnnotatedDataFrame("GSE1000_series_matrix.txt")

gse_log <- log2(exprs(gse))

treatment <- rowMeans(gse_log[,1:5])

control <- rowMeans(gse_log[,6:10])

fold <- treatment/control


write.csv(fold, file="Exam1_fold.csv", row.names=FALSE)


#Question 2:

#boxplot

boxplot(treatment, col='green')
boxplot(control, col='red')


jpeg(file="Exam1_Plot")