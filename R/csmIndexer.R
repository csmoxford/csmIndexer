#' CSM Indexer
#'
#' A small indexer which produces a pdf of the contents of a folder.
#'
#' @examples
#'
#' # Add it here!!!
#'
#' @importFrom utils Sweave
#' @importFrom tools texi2pdf
#' @export csmIndexer
csmIndexer = function(){

  rnwfile <- system.file("Sweave", "csmIndexer_v1.0.Rnw", package = "utils")
  Sweave(rnwfile)
  tools::texi2pdf("csmIndexer_v1.0.Rnw", clean = TRUE, quiet = TRUE)
}
