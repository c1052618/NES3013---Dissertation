library(tidyverse)
library(ggplot2)
library(ggpubr)

df_1<-Dissertation_Data
df_std<-standardized_data

K <- df_1$height_6

hist(K)
Z_Score = data.frame(K - mean(K))/sd(K)
Z_Score$z = (K - mean(K))/sd(K)
Z_Score$index <- 1:120

print(Z_Score)

threshold = 3

for (i in Z_Score$z){
  if (i > threshold){
    print(i)
}
}



ggboxplot(df_std, x = "colonisation_type", y = "ag_biomass_accumulation", color = "light_treatment",
          palette = c("#00AFBB", "#E7B800"))


res.aov<-aov(ag_biomass_accumulation ~ light_treatment + root_colonisation + soil_colonisation, data = df_std)
summary(res.aov)             


         