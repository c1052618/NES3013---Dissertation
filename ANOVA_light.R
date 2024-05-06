library(tidyverse)
library(ggplot2)
library(ggpubr)

df_PPFD<-combined_light_data
df_r_fr<-combined_light_data


K <- df_r_fr$Ea_R_FR
K <- df_PPFD$'PPFD/Ea'


hist(K)
Z_Score = data.frame(K - mean(K))/sd(K)
Z_Score$z = (K - mean(K))/sd(K)
Z_Score$index <- 1:112

print(Z_Score)

threshold = 3

for (i in Z_Score$z){
  if (i > threshold){
    print(i)
    }
}



  
PPFD <- ggline(df_PPFD, x = "sample_height", y = "PPFD_Ea", color = "light_treatment",
         add = c("mean_se"),
         palette = c("#00AFBB", "#E7B800"), xlab = "Sample height (cm)" , ylab = "PPFD/Ea", size = 0.7, 
         width = 0.7, ggtheme = theme_pubr(base_size = 12,
                                  base_family = "Helvetica",legend = c("top")))

PPFD_scaled <- ggpar(PPFD, ylim = c(3,3.32), legend = "right", yticks.by = 0.05)
  




res.aov<-aov(ag_biomass_accumulation ~ light_treatment + root_colonisation + soil_colonisation, data = df_std)
summary(res.aov)             


         