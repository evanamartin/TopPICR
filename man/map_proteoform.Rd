% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/map_proteoform.R
\name{map_proteoform}
\alias{map_proteoform}
\title{Map proteoforms to proteins}
\usage{
map_proteoform(x, fst_path, fst_name)
}
\arguments{
\item{x}{A \code{data.table} output from the \code{read_toppic} function.}

\item{fst_path}{A character string specifying the path to the protein
database (.fasta) file.}

\item{fst_name}{A character string containing the name of the .fasta file.}
}
\value{
A \code{data.table} with all protein accessions that match each amino
acid sequence, not just the highest scoring accession. The number of rows
in the output could be much larger than the number of rows in the input
because all accessions for each sequence are included. The following
variables have been added/removed:\tabular{ll}{
   Added \tab Removed \cr
   \code{cleanSeq} \tab  \cr
   \code{UniProtAcc} \tab  \cr
   \code{protLength} \tab  \cr
   \code{firstAA} \tab  \cr
   \code{lastAA} \tab  \cr
   \code{AnnType} \tab  \cr
   \code{PercentCoverage} \tab  \cr
}
}
\description{
Add variables for a given proteoform in relation to the proteins it maps to.
For example, the location of the first and last amino acid where the
proteoform matches the protein, percentage of the protein the proteoform
covers, and length of the protein.
}
\author{
Evan A Martin
}
