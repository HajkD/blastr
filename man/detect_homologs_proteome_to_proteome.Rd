% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/detect_homologs_proteome_to_proteome.R
\name{detect_homologs_proteome_to_proteome}
\alias{detect_homologs_proteome_to_proteome}
\title{Perform Proteome to Proteome BLAST Searches against a set of Proteomes}
\usage{
detect_homologs_proteome_to_proteome(
  query,
  subject_proteomes,
  task = "blastp",
  blast_output_path = "blast_output",
  min_alig_length = 20,
  evalue = 1e-05,
  max.target.seqs = 5000,
  cores = 1,
  update = FALSE,
  ...
)
}
\arguments{
\item{query}{path to input file in fasta format.}

\item{subject_proteomes}{a character vector containing paths to subject files in fasta format.}

\item{task}{protein search task option. Options are:
\itemize{
\item \code{task = "blastp"} : Standard protein-protein comparisons (default).
\item \code{task = "blast-fast"} : Improved BLAST searches using longer words for protein seeding.
\item \code{task = "blastp-short"} : Optimized protein-protein comparisons for query sequences shorter than 30 residues.
}}

\item{blast_output_path}{a path to a folder that will be created to store BLAST output tables for each individual query-proteome search.}

\item{min_alig_length}{minimum alignment length that shall be retained in the result dataset. All hit alignments with smaller hit alignment length will be removed automatically.}

\item{evalue}{Expectation value (E) threshold for saving hits (default: evalue = 1E-5).}

\item{max.target.seqs}{maximum number of aligned sequences that shall be kept. Default is \code{max.target.seqs = 500}.}

\item{cores}{number of cores for parallel BLAST searches.}

\item{update}{a logical value indicating whether or not pre-computed BLAST tables should be removed and re-computed (\code{update = TRUE}) or imported from existing file (\code{update = FALSE}) (Default).}

\item{\dots}{additional arguments passed to \code{\link{blast_protein_to_protein}}.}
}
\description{
Run proteome to proteome BLAST searches to detect homologous protein sequences
in a set of subject proteomes.
}
\author{
Hajk-Georg Drost
}
