# csmIndexer

This package contains a small indexer which produces a pdf of the contents of a folder.

## Installation

Requirements:

* An installation of [R](https://cran.r-project.org/bin/windows/base/)
* An installation of [RStudio](https://www.rstudio.com/home/) (Recommended)
* An installation of [Miktex](http://miktex.org/download) to compile the .tex file.

In R run the following:

	install.packages("devtools")
	devtools::install_github("csmoxford/csmIndexer")

## Usage

Please see the help file for usage. 

	library(csmIndexer)
	?csmIndexer

The example is designed to work for CSM since it points at the I drive. You can copy this example to a .R file and make the necessary changes to create your own index. Save this file for easy rerunning!

## Credits

Eleni Frangou

Peter Dutton

## License
GPL-2