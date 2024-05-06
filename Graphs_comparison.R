library(tidyverse)
library(ggplot2)
library(ggpubr)

df_1<-Dissertation_Data
df_std_delta_CFL<-standardized_data #no log
df_std_mass<-standardized_data #no log
df_std_growth_rate<-standardized_data #no log
df_std_leaf_area<-standardized_data #no log
df_std_SLA<-standardized_data #log
df_std_ag_biomass_ac<-standardized_data #no log
df_std_SPAD<-standardized_data #no log

df_std_ag_biomass_ac$


SPAD <- ggboxplot(df_std_SPAD, x = "AMF Treatment", y = "SPAD_6_A", fill = "gray95", color = "Light Treatment", 
                         palette = c("#00AFBB", "#E7B800"), xlab = "" , ylab = "SPAD", size = 0.7, 
                         width = 0.7, ggtheme = theme_pubr(base_size = 12,
                                                           base_family = "Helvetica",legend = c("top")))

SPAD_scaled <- ggpar(SPAD, ylim = c(20,50), legend = "top", yticks.by = 5)


biomass <- ggboxplot(df_std_ag_biomass_ac, x = "AMF Treatment", y = "ag_biomass_accumulation", fill = "gray95", color = "Light Treatment", 
                     palette = c("#00AFBB", "#E7B800"), xlab = "" , ylab = "Above-ground biomass accumulation (g/day)", size = 0.7, 
                     width = 0.7, ggtheme = theme_pubr(base_size = 12,
                                                       base_family = "Helvetica",legend = c("top")))

biomass_scaled <- ggpar(biomass, ylim = c(0,0.2), legend = "none", yticks.by = 0.02)




SLA <- ggboxplot(df_std_SLA, x = "AMF Treatment", y = "SLA", fill = "gray95", color = "Light Treatment", 
                 palette = c("#00AFBB", "#E7B800"), xlab = "" , ylab = "Specific Leaf Area (cm^2/g)", size = 0.7, 
                 width = 0.7, ggtheme = theme_pubr(base_size = 12,
                                                   base_family = "Helvetica",legend = c("top")))

SLA_scaled <- ggpar(SLA, ylim = c(75,225), legend = "none", yticks.by = 25)



leaf_area <- ggboxplot(df_std_leaf_area, x = "AMF Treatment", y = "leaf_area", fill = "gray95", color = "Light Treatment", 
                       palette = c("#00AFBB", "#E7B800"), xlab = "" , ylab = "Leaf lamina area (cm^2)", size = 0.7, 
                       width = 0.7, ggtheme = theme_pubr(base_size = 12,
                                                         base_family = "Helvetica",legend = c("top")))
leaf_area_scaled <- ggpar(leaf_area, ylim = c(200,1100), legend = "none", yticks.by = 100)





growth_rate <- ggboxplot(df_std_growth_rate, x = "AMF Treatment", y = "growth_rate", fill = "gray95", color = "Light Treatment", 
                         palette = c("#00AFBB", "#E7B800"), xlab = "" , ylab = "Vertical growth rate (cm/day)", size = 0.7, 
                         width = 0.7, ggtheme = theme_pubr(base_size = 12,
                                                           base_family = "Helvetica",legend = c("top")))
dry_mass_scaled <- ggpar(growth_rate, ylim = c(0.2,0.5), legend = "none", yticks.by = 0.1)



dry_mass <- ggboxplot(df_std_mass, x = "AMF Treatment", y = "combined_dry_mass", fill = "gray95", color = "Light Treatment", 
                      palette = c("#00AFBB", "#E7B800"), xlab = "" , ylab = "Above-ground dry mass (g)", size = 0.7, 
                      width = 0.7, ggtheme = theme_pubr(base_size = 12,
                                                        base_family = "Helvetica",legend = c("top")))
dry_mass_scaled <- ggpar(dry_mass, ylim = c(0,12), legend = "none", yticks.by = 2)

height_diameter_ratio <- ggboxplot(df_1, x = "AMF Treatment", y = "height_diameter_ratio", fill = "gray95", color = "Light Treatment", 
                                   palette = c("#00AFBB", "#E7B800"), xlab = "" , ylab = "Height per diameter", size = 0.7, 
                                   width = 0.7, ggtheme = theme_pubr(base_size = 12,
                                                                     base_family = "Helvetica",legend = c("top")))
height_diameter_ratio_scaled <- ggpar(height_diameter_ratio, ylim = c(0.3,0.8), legend = "none", yticks.by = 0.1)


CFL <- ggboxplot(df_1, x = "AMF Treatment", y = "`CFL_6_Fv/Fm`", fill = "gray95", color = "Light Treatment",
                 palette = c("#00AFBB", "#E7B800"), xlab = "" , ylab = "Fv/Fm", size = 0.7, 
                 width = 0.7, ggtheme = theme_pubr(base_size = 12,
                                                    base_family = "Helvetica", legend = c("right")))
CFL_scaled <- ggpar(CFL, ylim = c(0.76, 0.88), legend = "none",yticks.by = 0.02)

stem_length <- ggboxplot(df_1, x = "AMF Treatment", y = "stem_length", fill = "gray95", color = "Light Treatment",
                        palette = c("#00AFBB", "#E7B800"), xlab = "" , ylab = "Stem length (cm)", size = 0.7, 
                        width = 0.7, ggtheme = theme_pubr(base_size = 12,
                                                          base_family = "Helvetica",legend = c("right")))
stem_length_scaled <- ggpar(stem_length, ylim = c(5,30), legend = "none", yticks.by = 5)

height <- ggboxplot(df_1, x = "AMF Treatment", y = "height_6", fill = "gray95", color = "Light Treatment",
                           palette = c("#00AFBB", "#E7B800"), xlab = "" , ylab = "Plant Height (cm)", size = 0.7, 
                    width = 0.7, ggtheme = theme_pubr(base_size = 12,
                                                      base_family = "Helvetica",legend = c("top")))
height_scaled <- ggpar(height, ylim = c(10,35), legend = "none", yticks.by = 5)

plant_diameter <- ggboxplot(df_1, x = "AMF Treatment", y = "plant_diameter", fill = "gray95", color = "Light Treatment",
                             palette = c("#00AFBB", "#E7B800"), xlab = "" , ylab = "Plant Diameter (cm)", size = 0.7, 
                            width = 0.7, ggtheme = theme_pubr(base_size = 12,
                                                              base_family = "Helvetica",legend = c("top")))
plant_diameter_scaled <- ggpar(plant_diameter, ylim = c(25,55), legend = "none", yticks.by = 5)











