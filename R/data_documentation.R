#' Country border (Polygons)
#'
#' Manipulated data from the Swissboundries3D dataset by \href{http://swisstopo.ch}{swisstopo.}
#' 
#' Manipulation: 
#' \enumerate{
#'   \item Removed z-Values
#'   \item Dropped some columns
#' }
#' @format An \code{sf} object containing polygon data with four features.
#' \describe{
#'   \item{NAME}{Name of the country}
#'   \item{EINWOHNERZ}{Number of Inhabitants}
#'   \item{LANDESFLAE}{Area}
#'   \item{geometry}{sfc_POLYGON  data in EPSG 2056}
#' }
#' @source \url{https://shop.swisstopo.admin.ch/de/products/landscape/boundaries3D}
"landesgebiet"


#' Canton border (Polygons)
#'
#' Manipulated data from the Swissboundries3D dataset by \href{http://swisstopo.ch}{swisstopo.}
#' Manipulation: 
#' \enumerate{
#'   \item Removed z-Values
#'   \item Dropped some columns
#'   \item Singlepart to multipart (summarise.sf = st_union?)
#'   \item Added some metadata (Abk. and following)
#' } 
#' 
#' @format An \code{sf} object containing polygon data with four features.
#' \describe{
#'   \item{NAME}{Name of the country}
#'   \item{KANTONSNUM}{Official number of canton}
#'   \item{EINWOHNERZ}{Number of inhabitatns (probabbly sum of all multipart features)}
#'   \item{KANTONSFLA}{Area (probabbly sum of all multipart features)}
#'   \item{Abk.}{Official abbreviation}
#'   \item{Beitritt}{Member in the swiss confederation since}
#'   \item{Hauptort}{Capital}
#'   \item{Amtssprache}{Official language}
#'   \item{Franzoesisch}{Name in French}
#'   \item{Italienisch}{Name in Italian}
#'   \item{Raetoromanisch}{Name in Romansh}
#'   \item{geometry}{sfc_POLYGON  data in EPSG 2056}
#' }
#' @source \url{https://shop.swisstopo.admin.ch/de/products/landscape/boundaries3D}
"kantonsgebiet"


#' District border (Polygons)
#'
#' Manipulated data from the Swissboundries3D dataset by \href{http://swisstopo.ch}{swisstopo.}
#' Manipulation: 
#' \enumerate{
#'   \item Removed z-Values
#'   \item Dropped some columns
#' } 
#' 
#' @format An \code{sf} object containing polygon data with four features.
#' \describe{
#'   \item{NAME}{Name of the country}
#'   \item{BEZIRKSNUM}{Official district number}
#'   \item{KANTONSNUM}{Official number of canton}
#'   \item{EINWOHNERZ}{Number of inhabitants}
#'   \item{BEZIRKSFLA}{Area}
#'   \item{geometry}{sfc_POLYGON  data in EPSG 2056}
#' }
#' @source \url{https://shop.swisstopo.admin.ch/de/products/landscape/boundaries3D}
"bezirksgebiet"

#' Municipality border (Polygons)
#'
#' Manipulated data from the Swissboundries3D dataset by \href{http://swisstopo.ch}{swisstopo.}
#' Manipulation: 
#' \enumerate{
#'   \item Removed z-Values
#'   \item Dropped some columns
#'   \item Singlepart to multipart (\code{\link[sf]{summarise.sf}} corresponds to
#'         \code{\link[sf]{st_union}}?)
#' } 
#' 
#' @format An \code{sf} object containing polygon data with four features.
#' \describe{
#'   \item{NAME}{Name of the country}
#'   \item{BEZIRKSNUM}{Official district number}
#'   \item{KANTONSNUM}{Official number of canton}
#'   \item{BFS_NUMMER}{Number of the Swiss official commune register}
#'   \item{EINWOHNERZ}{Number of inhabitants}
#'   \item{GEM_FLAECH}{Area}
#'   \item{geometry}{sfc_POLYGON  data in EPSG 2056}
#' }
#' @source \url{https://shop.swisstopo.admin.ch/de/products/landscape/boundaries3D}
"gemeindegebiet"

#' Lakes (1:500'000 Swiss Vector Map)
#'
#' Manipulated data from the Swiss Map Vector 500 dataset by 
#' \href{http://swisstopo.ch}{swisstopo}.
#' 
#' Manipulation: 
#' \enumerate{
#'   \item Dropped some columns
#'   \item selected lakes \emph{within} switzland (\code{\link[sf]{st_intersects}})
#' } 
#' 
#' @format An \code{sf} object containing polygon data with following attributes
#' \describe{
#'   \item{NAMN1}{Name of the Lake in the respective official language (see NLN1)}
#'   \item{GROESSTE_S}{Probabbly greatest depth}
#'   \item{SEESPIEGEL}{Probabbly elevelation of lake level}
#'   \item{NLN1}{Language}
#'   \item{SHP_AREA}{Area in m2}
#'   \item{geometry}{sfc_POLYGON  data in EPSG 2056}
#' }
#' @source \url{https://shop.swisstopo.admin.ch/en/products/maps/national/digital/smv500}
"seen"