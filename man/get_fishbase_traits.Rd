% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fishbase.R
\name{get_fishbase_traits}
\alias{get_fishbase_traits}
\title{Retrieve FishBase life-history trait data for species}
\usage{
get_fishbase_traits(spec_names = NULL)
}
\arguments{
\item{spec_names}{A character vector of species names (e.g., \code{"Gadus morhua"}).}
}
\value{
A tibble with metadata and trait information. The tibble contains the
following columns:
\describe{
\item{\code{rfishbase}}{The corresponding rfishbase function used to get the
trait information, e.g., \code{\link[rfishbase:popgrowth]{rfishbase::popgrowth()}}.}
\item{Species}{The scientific name of the species.}
\item{SpecCode}{The unique species code used in FishBase.}
\item{Sex}{A lower-case string indicating the sex of the specimens
included in the study. Note that this column was converted to lower case
for consistency.}
\item{PopGrowthRef}{}
\item{DataSourceRef}{}
\item{Locality}{The locality where the data was collected.}
\item{YearStart}{The first year of data collection.}
\item{YearEnd}{The last year of data collection.}
\item{Number}{The number of individuals used to estimate the parameters.}
\item{Type}{The type of measurements used. For example, when measuring
length for the growth model, the type of length measurement will be
listed (e.g., "TL" = total length, "SL" = standard length, etc.). This
column is important for consistency with \code{\link[rfishbase:length_weight]{rfishbase::poplw()}} or
\code{\link[rfishbase:popchar]{rfishbase::popchar()}}.}
\item{C_Code}{Country code in FishBase, usually a string or character}
\item{E_CODE}{Ecosystem code in FishBase, usually a string or character.}
\item{SourceRef}{}
\item{StockCode}{}.
\item{AgeMatRef}{}.
\item{trait}{The name of the trait taken from FishBase.}
\item{value}{The value of the measured or calculated trait.}
\item{SE}{The standard error of the trait value. This information is not
available for all traits, and will be \code{NA} if not available.}
\item{SD}{The standard deviation of the trait value. This information is
not available for all traits, and will be \code{NA} if not available.}
\item{country}{The country where the data was collected}
\item{country_sub}{The sub-country where the data was collected. For the
USA, this is usually a state for example}
\item{EcosystemName}{The name of the ecosystem where the data was collected.}
}
}
\description{
Queries FishBase via the \pkg{rfishbase} package and returns raw data tables
containing life-history traits relevant for meta-analysis or prior
construction.
}
\details{
There are many traits available in FishBase but this function only returns
those that were relevant for assessment and life-history modeling. Should
you wish that more traits be included, please open an \href{https://github.com/NOAA-FIMS/fishprior/issues}{issue on GitHub}. Below is a list of the
traits that are available in the \code{trait} column:
\describe{
\item{Loo}{Asymptotic length (L∞) in the von Bertalanffy Growth Function
(typically in cm).}
\item{K}{Growth coefficient (K) from the von Bertalanffy model (in
1/year).}
\item{to}{Theoretical age at zero length (t₀) from the von Bertalanffy
model (in years).}
\item{M}{Natural mortality rate (M) estimated from the growth model or
accompanying source.}
\item{Wmax}{The maximum observed body weight in the population (usually in
grams).}
\item{Lmax}{The maximum observed length in the population (usually in cm).}
\item{tmax}{The maximum observed age (in years).}
\item{LengthMax}{The maximum length observed in the dataset used to fit
the length--weight relationship (same units as Type, usually cm).}
\item{a}{This parameter can have multiple meanings depending on the
function that was used to estimate it, see the \code{rfishbase} column for
context. If the function was \code{\link[rfishbase:length_weight]{rfishbase::poplw()}}, then the a parameter
is the intercept of the length--weight relationship, i.e., W = a * L^b.
If the function was \code{\link[rfishbase:fecundity]{rfishbase::fecundity()}}, then a is the intercept of
the fecundity relationship.}
\item{b}{This parameter can have multiple meanings depending on the
function that was used to estimate it, see the \code{rfishbase} column for
context. If the function was \code{\link[rfishbase:length_weight]{rfishbase::poplw()}}, then b is the slope
of the length--weight relationship, i.e., W = a * L^b. This is often
approximately 3 for isometric growth. If the function was
\code{\link[rfishbase:fecundity]{rfishbase::fecundity()}}, then b is the slope of the fecundity
relationship.}
\item{tm}{The age at maturity (in years), interpreted as the age when 50\%
are mature.}
\item{Lm}{The length at maturity (typically in cm), often L50 (length at
50\% maturity).}
\item{FecundityMin}{The minimum fecundity observed in the population.}
\item{FecundityMax}{The maximum fecundity observed in the population.}
\item{FecundityMean}{The mean fecundity observed in the population.}
\item{Winfinity}{asymptotic weight, i.e., W∞}
}
}
