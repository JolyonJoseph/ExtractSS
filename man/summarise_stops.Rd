% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summarise_stops.R
\name{summarise_stops}
\alias{summarise_stops}
\title{Summarise stops by object of search, legislation, or outcome}
\usage{
summarise_stops(
  data,
  metric = c("object_of_search", "legislation", "outcome"),
  by_area = TRUE,
  area_type = "la",
  by_year = FALSE,
  by_ethnicity = FALSE,
  ethnicity_definition = c("officer", "self", "combined"),
  aggregate_ethnicity = FALSE,
  plot = TRUE,
  save_plot = FALSE,
  metric_by_ethnicity = FALSE
)
}
\arguments{
\item{data}{The data to analyse. Must be an R object in the environment}

\item{metric}{Specify what summary statistics are desired. The options are
'object of search' (i.e., what is being searched for, e.g,. Controlled Drugs),
'legislation' (e.g., "Misuse of Drugs Act), or 'outcome' (e.g., arrest).}

\item{by_area}{Boolean indicating whether to analyse by local authority or not.
If TRUE, will group data by local authority before summarising. Default is TRUE.}

\item{by_ethnicity}{Boolean indicating whether to analyse by ethnicity or not.
If true, will group data by ethnicity before summarising. Default is FALSE.}

\item{ethnicity_definition}{If by_ethnicity is TRUE, ethnicity_definition must be
specified. "self" = self-defined; "officer" = officer-defined. "combined" will
use self-defined and where self-defined is missing will use officer-defined.
This reduces the number of missing cases (by approximately 24\%).
Default is officer-defined.}

\item{aggregate_ethnicity}{If using self-defined ethnicity, choose whether
to use the original categories or to aggregate into super-ordinate categories
(i.e., "Black", "White","Asian","Mixed","Other"). Default is FALSE. Note that
mixed Black sub-ordinate categories will be grouped into the "Black"
super-ordinate category. This is based on the assumption that anyone who can be
racialised as Black will have an experience closer to the Black experience than
the non-Black experience.}

\item{plot}{If by_area is FALSE, by default the function will produce summary
plots. This can be changed by setting plot = FALSE.}

\item{save_plot}{If plot is TRUE, the plot can be saved to png with save_plot.
Default is FALSE.}

\item{metric_by_ethnicity}{Specify whether the summarisation should nest ethnicity
within the metric (TRUE), or the metric within ethnicity (FALSE). This will
change what percentages represent.  If FALSE, calculated percentages will
represent the number of stops for each level of the metric as a proportion of
the total number of stops for the ethnicity; e.g., for object_of_search, percentages
will represent the number of stops of each object of search as a proportion of
the total number of stops for the ethnicity. If TRUE, percentages will
represent the number of stops for each ethnicity as a proportion of the total
number of stops for the level of the metric; e.g., for object_of_search,
percentages will represent the number of stops of each ethnicity as  proportion
of the total number of stops for each object. By default FALSE.}
}
\value{
A grouped data frame containing the frequency and percentage of stops
for each grouping factor. If plot = TRUE, a summary plot will be presented. If
save_plot = TRUE, a png image will be saved in the folder "./outputs/".
}
\description{
Takes a raw stop and search data frame and summarises it by object of search,
legislation, or outcome. By default if will summarise by area. The summary
can also be broken down by ethnicity.
}
\examples{
summary_tab <- summarise_stops(data, metric = "outcome", by_ethnicity = TRUE)

}
