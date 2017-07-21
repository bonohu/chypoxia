# R script to run principal component analysis (PCA)
data <- read.table("human.txt", header=TRUE, row.names=1, sep="\t", quote="")         # read file
data.pca <- prcomp(t(data))
names(data.pca)
#plot(data.pca$sdev, type="h", main="PCA s.d.")
data.pca.sample <- t(data) %*% data.pca$rotation[,1:2]                        # extract 1st and 2nd components
plot(data.pca.sample, main="PCA")                                             # plot extracted components
text(data.pca.sample, colnames(data), col = c(rep("red", 4), rep("blue",4),rep("cyan",6),rep("green",6),rep("purple",6),rep("purple1",3),rep("purple2",3),rep("orange",2),rep("black", 8),rep("brown", 4),rep("lightgray",8),rep("gray", 8),rep("pink3",8),rep("violet",4),rep("darkgray",18)))
