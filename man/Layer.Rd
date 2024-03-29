% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/layer.R
\name{Layer}
\alias{Layer}
\title{Create a layer}
\usage{
Layer(type, id, source = NULL, paint = NULL, layout = NULL, ...)
}
\arguments{
\item{layout}{}
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

maplibre() |>
  add_layer(earthquakes_layer)


}
