library(lattice)
library(permute)
library(tidyverse)
library(vegan)
library(psych)
library(tidyr)
library(tidyverse)
library(ggplot2)
library(stats)
#Standardisation


df_1<-Dissertation_Data

variables_to_standardize <- c("stem_length", "leaf_area", "SLA", "combined_dry_mass", "ag_biomass_accumulation", "height_6", "growth_rate", 
                              "plant_diameter", "height_diameter_ratio", "SPAD_6_A",
                              "SPAD_6_B", "SPAD_6_C", "CFL_6_Fv/Fm")


df_1_standardized <- scale(df_1[, variables_to_standardize])


df_1_standardized <- as.data.frame(df_1_standardized)

colnames(df_1_standardized) <- paste("std_", variables_to_standardize, sep = "")


df_2 <- cbind(df_1, df_1_standardized)

#RDA

X = subset(df_2, select = c("root_colonisation", "soil_colonisation"))



Y = subset(df_2, select = c("std_leaf_area", "std_SLA",
                            "std_height_6", "plant_diameter", "height_diameter_ratio", "std_SPAD_6_A", 
                            "std_SPAD_6_B", "std_SPAD_6_C", "std_CFL_6_Fv/Fm", "std_ag_biomass_accumulation"))
                              

Z = subset(df_2, select = c("std_combined_dry_mass","light_treatment_binary"))


partial_2 <- rda(X, Y, Z)

summary(partial_2)

RsquareAdj(partial_2)$adj.r.squared

ordiplot(partial_2, scaling=2, main="title")




anova.cca(partial_2, step = 1000)


                 
                 
                 
                 