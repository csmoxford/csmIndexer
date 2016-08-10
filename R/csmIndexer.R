#' CSM Indexer
#'
#' A small indexer which produces a pdf of the contents of a folder.
#'
#' @example inst/example/csmIndexer_example.R
#'
#' @param path The path to the folder to be indexed
#' @param pageLogo The path to logos to add at the top of each page
#' @param titleLogo The path to logos to add on the title page
#' @param author The author of the document
#' @param title The document title
#' @param personnel The key personnel working on the documents contained in the folder. You may wish to include start and end dates here if appropriate.
#'
#' @details
#' Prerequesites: You must have installed miktex and it must be available on the PATH.
#'
#' Please set the working directory explicitely using setwd() to ensure you know where the file is being created.
#'
#' Note that the R programming language uses bachslash \ to create special characters. The simplest way to write paths is to replace them with forwardslash /.
#' @author Eleni Frangou
#' @author Peter Dutton
#'

#'
#' @importFrom utils Sweave
#' @importFrom tools texi2pdf
#' @export csmIndexer
csmIndexer = function(){

  rnwfile <- system.file("indexer","csmIndexer_v1.0.Rnw", package = "csmIndexer", mustWork = TRUE)
  Sweave(rnwfile)

  file = strsplit(rnwfile,"/")[[1]]
  file = file[length(file)]

  file = substring(file,1,nchar(file)-4)
  wd = getwd()
  tools::texi2pdf(paste0(wd,"/",file,".tex"))

  # cleanup:
  file.remove(paste0(wd,"/",file,".aux"))
  file.remove(paste0(wd,"/",file,".log"))
  file.remove(paste0(wd,"/",file,"-concordance.tex"))
  file.remove(paste0(wd,"/",file,".tex"))
  return()
}
