% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model_functions.R
\name{estimate_passing_value_added}
\alias{estimate_passing_value_added}
\title{Calculate Player Effects for Passing Plays}
\usage{
estimate_passing_value_added(pass_pbp_df, air_formula, yac_formula)
}
\arguments{
\item{pass_pbp_df}{Play-by-play data set of passing plays.}

\item{air_formula}{Formula for the air based component.}

\item{yac_formula}{Formula for the yac based component.}
}
\value{
List with the following:
\itemize{
\item{"air_model"} - Model fit for air component
\item{"yac_model"} - Model fit for yac component
\item{"QB_table"} - Table of QB estimated random effects
\item{"Rec_table"} - Table of receiver estimated random effects
}
}
\description{
Calculate Player Effects for Passing Plays
}
\examples{
passing_effects_list <- estimate_passing_value_added(pass_model_df, air_formula,
                                                     yac_formula, "scorediff")
}
