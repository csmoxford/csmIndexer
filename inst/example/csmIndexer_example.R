

# install dependencies
install.packages(c("xtable","stringr"))
# install package containing the indexer.
devtools::install_github()

setwd("I:/Data/Peter_Dutton/Shared_code/R/indexer")

path <- "R:/Alzheimers and Dementia/ILiAD"
pageLogo <- c("I:/Data/OCTRU_SOPs/CSMLogo.png", "I:/Data/OCTRU_SOPs/CSMLogo.png")
titleLogo <- c("I:/Data/OCTRU_SOPs/CSMLogo.png", "I:/Data/OCTRU_SOPs/CSMLogo.png")
author <- "Eleni Franou"
title <- "Trial Master File Statistics Index: ELAD"
personnel <- c("Eleni Frangou (Statistician)", "Sharon Love (Senior Statistician)")

csmIndexer()

