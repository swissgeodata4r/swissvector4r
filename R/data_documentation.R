#' Country border ("landesgebiet")
#'
#' Data from the Swissboundries3D dataset by \href{http://swisstopo.ch}{swisstopo.}

#'
#' @format An \code{sf} object containing polygon data with four features.
#' \describe{
#'   \item{NAME}{Name of the country}
#'   \item{geometry}{sfc_POLYGON  data in EPSG 2056}

#' }
#' @source \url{https://shop.swisstopo.admin.ch/de/products/landscape/boundaries3D}
"landesgebiet"


#' Lakes ("seen")
#'
#' Data from the Swiss Map Vector 500 dataset by \href{http://swisstopo.ch}{swisstopo.}
#' 
#'
#' @format An \code{sf} object containing polygon data with following attributes
#' \describe{
#'   \item{geometry}{sfc_POLYGON  data in EPSG 2056}
#' }
#' @source \url{https://shop.swisstopo.admin.ch/en/products/maps/national/digital/smv500}
"seen"