

require(sf)
require(dplyr)


berzirksgebiet <- sf::read_sf("inst/extdata/swissBOUNDARIES3D_1_3_TLM_BEZIRKSGEBIET.shp") %>%
  st_set_crs(2056)

save(berzirksgebiet, file = "data/berzirksgebiet.RData")


hoheitsgebiet <- sf::read_sf("inst/extdata/swissBOUNDARIES3D_1_3_TLM_HOHEITSGEBIET.shp") %>%
  st_set_crs(2056)

save(hoheitsgebiet, file = "data/hoheitsgebiet.RData")


hoheitsgrenze <- sf::read_sf("inst/extdata/swissBOUNDARIES3D_1_3_TLM_HOHEITSGRENZE.shp") %>%
  st_set_crs(2056)

save(hoheitsgrenze, file = "data/hoheitsgrenze.RData")

kantonsgebiet <- sf::read_sf("inst/extdata/swissBOUNDARIES3D_1_3_TLM_KANTONSGEBIET.shp") %>%
  st_set_crs(2056)

save(kantonsgebiet, file = "data/kantonsgebiet.RData")


landesgebiet <- sf::read_sf("inst/extdata/swissBOUNDARIES3D_1_3_TLM_LANDESGEBIET.shp") %>%
  st_set_crs(2056)

save(landesgebiet, file = "data/landesgebiet.RData")
