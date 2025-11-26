# MelocactusRangeDynamics
Scripts for modeling spatial distribution of Melocactus in the Caatinga biome

Here we describe the operational procedures for species distribution modeling (SDM) of three cactus species of the genus Melocactus (M. bahiensis, M. ernestii and M. zehntneri) in the Caatinga Biome, Northeastern Brazil. The results were submitted to the journal Tropical Ecology in an article entitled: ‘Climate change affects the distribution of cacti species of the genus Melocactus in the Brazilian Caatinga’.
The operational procedures followed the following steps (Figure 1):

![Fluxograma](https://github.com/user-attachments/assets/bd979a21-266d-4b7e-9540-85647eca33ce)

Figura 1 - Flowchart of the operational procedures for species distribution modeling

Figure 2 illustrates the structure of the directory (for example, C:/Mbahiensis/) for modeling the species M. bahiensis. The folders ‘BRT’ and ‘Maxent’ are the output folders for the BRT and MaxEnt models, respectively; ‘Layers’ contains the predictor variables (current climate), and ‘Layers_1’, ‘Layers_2’, … contain the predictor variables for future climate scenarios (one scenario in each folder); ‘abscense_mask_bahiensis.asc’ is a raster file with the mask area for selecting pseudo-absences in the BRT model; ‘M_bahiensis_test.csv’ contains independent occurrence records for the final evaluation of the models, and ‘melocactus_bahiensis.csv’ contains occurrence records to be used in model calibration. These files are available in the folder ‘exemple_data’ above.

<img width="272" height="367" alt="image" src="https://github.com/user-attachments/assets/0dee2856-9043-4198-8e42-f7a1c5ad69b6" />

Figure 2 – Example of the directory folder for modeling M. bahiensis

Figure 3 illustrates the structure of the directory (for example, C:/Melocactus_MOP/) for applying the ‘kuenm_mmop’ function (Cobos et al. 2019). This function calculates mobility-oriented parity (MOP) layers (Owens et al. 2013). The folder ‘Layers’ contains the predictor variables (current climate), and ‘T_Layers’ contains the predictor variables for future climate scenarios. These files are available in the ‘exemple_data’ folder above.

<img width="294" height="100" alt="image" src="https://github.com/user-attachments/assets/707324a8-c39d-4d1e-80f2-889bb65c839e" />
 
Figure 3 – Example of a directory for MOP analysis

References

Bohl CL, Kass JM, Anderson RP (2019) A new null model approach to quantify performance and significance for ecological niche models of species distributions. J. Biogeogr 46:1101–1111. https://doi.org/10.1111/jbi.13573

Cobos ME, Peterson AT, Barve N, Osorio-Olvera L (2019) Kuenm: an R package for detailed development of ecological niche models using Maxent. PeerJ. 7:e6281. [online]. Available from: https://peerj.com/articles/6281

Elith J, Leathwick JR, Hastie T (2008) A working guide to boosted regression trees. J Anim Ecol 77:802–813. https://doi.org/10.1111/j.1365-2656.2008.01390.x 

Hijmans RJ, Phillips S, Leathwick J, Elith J (2021) Dismo: species distribution modeling. – R package ver.1.3-5. Available at: https://CRAN.R-project.org/package=dismo. Accessed 12 Mar 2021.

Hijmans, R. J.; Elith, J. (2017) Species distribution modeling with R. R Cran Project. Available at: https://www.researchgate.net/profile/Mohamed-Mourad-Lafifi/post/How_to_loop_multiple_maxent_models/attachment/5f4c3571ce377e00016fe61a/AS%3A930374343483392%401598829937118/download/Species+distribution+modeling+with+R.pdf .Accessed 26 Nov 2025.

Osorio‐Olvera L, Lira‐Noriega A, Soberón J, Peterson AT, Falconi M, Contreras‐Díaz RG, et al (2020) Ntbox : An R package with graphical user interface for modelling and evaluating multidimensional ecological niches. Methods Ecol Evol 11:1199–1206. https://doi.org/10.1111/2041-210X.13452
