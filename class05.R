#' ---
#' title: "Class 5 R Graphics and Plots"
#' author: "Rose Li"
#' date: "Fri Apr 19 13:25:36 2019"
#' ---

# Class 5 R garphics and plots

# get the data in 
weight <- read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE)
#read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE)

# plot a scaterplot of age vs weight 
plot(weight$Age, 
  weight$Weight, 
  xlab="Age(mounts)", 
  ylab="Weight(kg)",
  pch=15, 
  col="blue", 
  type="o", 
  cex=1.5, lwd=2, ylim=c(2,10), main="Weight with age")

# 2B, Barplot
feat <- read.table("bimm143_05_rstats/feature_counts.txt",
                   header = TRUE, sep = "\t")

read.csv("bimm143_05_rstats/feature_counts.txt")

# options to change margins 
par(mar=c(5.1, 5.1, 4.1, 2.1))

# I could also use read.delim 
read.delim("bimm143_05_rstats/feature_counts.txt")

barplot(feat$Count, xlab="name", ylab="counts", names.arg = feat$Feature, horiz=TRUE)

# my labels are cliped I need to change the margins 
old.par <- par()$mar

par(mar=c(5, 11, 4, 1))


# Section3 
mf <- read.table("bimm143_05_rstats/male_female_counts.txt", 
                 header = TRUE, sep="\t")
barplot(mf$Count, names.arg = mf$Sample, las=2, col=rainbow(7))
rainbow(7)

# Section 3B
genes <- read.delim("bimm143_05_rstats/up_down_expression.txt", header = TRUE)
nrow(genes)
ncol(genes)
unique(genes$State)
table(genes$State)
col=(genes$State)
palette()
table(genes$State)
plot(genes$Condition1, genes$Condition2, col=genes$State)
levels(genes$State)
palette(c("red", "grey", "blue"))
plot(genes$Condition1, genes$Condition2, col=genes$State, xlab="Condition1", ylab="Condition2")


