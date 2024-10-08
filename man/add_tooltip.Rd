% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/layer.R
\name{add_tooltip}
\alias{add_tooltip}
\title{Add tooltip property to layer}
\usage{
add_tooltip(.map, layer_id, prop = NULL, template = NULL)
}
\arguments{
\item{.map}{A \code{\link[=maplibre]{maplibre()}} HTML widget}

\item{layer_id}{The layer to which the popup is added.}

\item{prop}{The property of the source to be displayed. If \code{None}, all properties are displayed.}

\item{template}{A mustache template. If supplied, \code{prop} is ignored.}
}
\value{
The updated \code{\link[=maplibre]{maplibre()}} HTML widget
}
\description{
Add tooltip property to layer
}
\examples{
library(maplibre)

earthquakes_source <- list(
  type = "geojson",
  data = "https://docs.mapbox.com/mapbox-gl-js/assets/earthquakes.geojson"
)

earthquakes_layer <- Layer(
  id = "earthquakes",
  type = "circle",
  source = earthquakes_source,
  paint = list("circle-color" = "yellow", "circle-radius" = 2)
)

# Adds a tooltip that appears when hovering over it

maplibre() |>
  add_layer(earthquakes_layer) |>
  add_tooltip("earthquakes", prop = "mag")

# Adds a popup that appears when clicking on the layer

maplibre() |>
  add_layer(earthquakes_layer) |>
  add_popup("earthquakes", prop = "mag")
}
