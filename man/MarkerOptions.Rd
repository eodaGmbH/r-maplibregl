% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/marker.R
\name{MarkerOptions}
\alias{MarkerOptions}
\title{Marker Options}
\usage{
MarkerOptions(
  anchor = NULL,
  color = NULL,
  pitchAlignment = NULL,
  rotationAlignment = NULL,
  draggable = NULL,
  rotation = NULL,
  scale = NULL,
  ...
)
}
\arguments{
\item{anchor}{A string indicating the part of the Marker that should be positioned closest to the coordinate set via the \code{\link[=Marker]{Marker()}} function. Options are 'center', 'top', 'bottom', 'left', 'right', 'top-left', 'top-right', 'bottom-left', and 'bottom-right'.}

\item{color}{The color to use for the default marker. The default is light blue.}

\item{pitchAlignment}{\code{map} aligns the Marker to the plane of the map. \code{viewport} aligns the Marker to the plane of the viewport. \code{auto} automatically matches the value of rotationAlignment.}

\item{rotationAlignment}{\code{map} aligns the Marker's rotation relative to the map, maintaining a bearing as the map rotates. \code{viewport} aligns the Marker's rotation relative to the viewport, agnostic to map rotations. \code{auto} is equivalent to viewport.}

\item{draggable}{A boolean indicating whether or not a marker is able to be dragged to a new position on the map.}

\item{rotation}{The rotation angle of the marker in degrees, relative to its respective rotationAlignment setting. A positive value will rotate the marker clockwise.}

\item{scale}{The scale to use for the default marker. The default scale corresponds to a height of 41px and a width of 27px.}

\item{...}{Additional marker options.}
}
\value{
A list of marker options
}
\description{
Marker Options
}
\examples{
marker <- Marker(
  lng_lat = c(9.5, 51.31667),
  popup = list(text = "This is a marker", options = list(closeButton = FALSE)),
  color = "darkred"
)

maplibre(mapOptions(center = c(9.5, 51.31667)), zoom = 4) |>
  add_marker(marker)
}
\references{
Parameter descriptions are adapted from the Maplibre GL JS Project, please visit the official documentation at \url{https://maplibre.org/maplibre-gl-js/docs/API/type-aliases/MarkerOptions/}
}
