dataset <- read.csv("D:/Internship/Task 2/Iris.csv",sep = ",", header = TRUE)
dataset_df <- data.frame(dataset)
head(dataset_df)
head(dataset)
install.packages("ggpubr")
library(factoextra)
library(NbClust)
library(ggpubr)
# Elbow method
fviz_nbclust(dataset_df[,c(1,2,3,4)], kmeans, method = "wss") +
  geom_vline(xintercept = 4, linetype = 2)+
  labs(subtitle = "Elbow method")
