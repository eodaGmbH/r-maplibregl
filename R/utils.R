set_maplibre_class <- function(.obj, class_name) {
  class(.obj) <- c(class(.obj), class_name)
  return(.obj)
}

rdantic <- function(.obj, types, test = 1L) {
  for (k in names(.obj)) {
    type_check <- types[[k]]
    value <- .obj[[k]]
    if (xor(!type_check(value), is.null(value))) {
      stop(value, " is not ", deparse(substitute(type_check)) , call.=FALSE)
    }
  }

  return(.obj)
}
