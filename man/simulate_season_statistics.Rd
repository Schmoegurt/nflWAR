% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sim_functions.R
\name{simulate_season_statistics}
\alias{simulate_season_statistics}
\title{Simulate NFL Season Pipeline}
\usage{
simulate_season_statistics(pbp_df, n_sims, sim_pipeline)
}
\arguments{
\item{pbp_df}{Play-by-play data frame.}

\item{n_sims}{Number of simulations.}

\item{sim_pipeline}{Pipeline function to apply to
each simulation.}
}
\value{
List of results for each simulation.
}
\description{
Simulate NFL Season Pipeline
}
\examples{
# Create the pipeline:
generate_war_results <- . \%>\%
 resample_season() \%>\%
 prepare_model_data() \%>\%
 add_position_tables() \%>\%
 join_position_statistics() \%>\%
 find_positional_replacement_level(league_replacement_functions) \%>\%
 estimate_player_value_added(wp_model_formula_list, "none") \%>\%
 calculate_above_replacement() \%>\%
 convert_prob_to_wins()
sim_results <- bootstrap_results(get_pbp_data(2017), 1000, generate_war_results)
}
