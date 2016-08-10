# install package containing the indexer.
devtools::install_github("csmoxford/csmIndexer")

# Load the library containing the functions
library(csmIndexer)

#################################################################
# Note that the R programming language uses bachslash \ to create special characters. The simplest way to write paths is to replace them with forwardslash /.
#################################################################

# Tell R where to create the pdf file
setwd("I:/Data/Useful Programs/Statistical TMF Index")

# The path to the folder to be indexed
path <- "I:/Data/Useful Programs/Statistical TMF Index"
# The path to logos to add at the top of each page
pageLogo <- c("I:/Data/OCTRU_SOPs/CSMLogo.png")
# The path to logos to add on the title page
titleLogo <- c("I:/Data/OCTRU_SOPs/CSMLogo.png")
# The author of the document
author <- "Eleni Franou"
# The document title
title <- "Index of useful Programs Folder"
# The key personnel working on the documents contained in the folder. You may wish to include start and end dates here if appropriate.
personnel <- c("Peter Dutton (Statistician)", "Eleni Frangou (Statistician)")

# Create the pdf
csmIndexer()

