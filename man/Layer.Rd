% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/layer.R
\name{Layer}
\alias{Layer}
\title{Create a layer}
\usage{
Layer(type, id, source = NULL, paint = NULL, layout = NULL, ...)
}
\arguments{
\item{type}{The type of the layer.}

\item{id}{The unique ID of the layer}

\item{source}{The name (unique ID) of a source or a source object to be used for the layer.}

\item{paint}{The paint properties of the layer.}

\item{layout}{The layout properties of the layer.}

\item{...}{Additional layer options}
}
\description{
Create a layer
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
