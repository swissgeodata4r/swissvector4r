

require(sf)
require(dplyr)


berzirksgebiet <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_BEZIRKSGEBIET.shp") %>%
  st_set_crs(2056)


# save(berzirksgebiet, file = "data/berzirksgebiet.RData")
devtools::use_data(berzirksgebiet, overwrite = TRUE)


hoheitsgebiet <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_HOHEITSGEBIET.shp") %>%
  st_set_crs(2056)

# save(hoheitsgebiet, file = "data/hoheitsgebiet.RData")
devtools::use_data(hoheitsgebiet, overwrite = TRUE)


hoheitsgrenze <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_HOHEITSGRENZE.shp") %>%
  st_set_crs(2056)

# save(hoheitsgrenze, file = "data/hoheitsgrenze.RData")
devtools::use_data(hoheitsgrenze, overwrite = TRUE)

kantonsgebiet <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_KANTONSGEBIET.shp") %>%
  st_set_crs(2056)

# save(kantonsgebiet, file = "data/kantonsgebiet.RData")
devtools::use_data(kantonsgebiet, overwrite = TRUE)


landesgebiet <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_LANDESGEBIET.shp") %>%
  st_set_crs(2056)

# save(landesgebiet, file = "data/landesgebiet.RData")
devtools::use_data(landesgebiet, overwrite = TRUE)
