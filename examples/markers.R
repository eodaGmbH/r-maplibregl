marker <- Marker(
  lng_lat = c(9.5, 51.31667),
  popup = list(text = "This is a marker", options = list(closeButton = FALSE)),
  color = "darkred"
)

maplibre(mapOptions(center = c(9.5, 51.31667)), zoom = 4) |>
  add_marker(marker)
