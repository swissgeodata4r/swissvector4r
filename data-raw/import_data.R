

require(sf)
require(dplyr)


berzirksgebiet <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_BEZIRKSGEBIET.shp") %>%
  st_set_crs(2056)


# save(berzirksgebiet, file = "data/berzirksgebiet.RData")
usethis::use_data(berzirksgebiet, overwrite = TRUE,compress = "xz")


hoheitsgebiet <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_HOHEITSGEBIET.shp") %>%
  st_set_crs(2056)

# save(hoheitsgebiet, file = "data/hoheitsgebiet.RData")
usethis::use_data(hoheitsgebiet, overwrite = TRUE,compress = "xz")


hoheitsgrenze <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_HOHEITSGRENZE.shp") %>%
  st_set_crs(2056)

# save(hoheitsgrenze, file = "data/hoheitsgrenze.RData")
usethis::use_data(hoheitsgrenze, overwrite = TRUE,compress = "xz")

kantonsgebiet <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_KANTONSGEBIET.shp") %>%
  st_set_crs(2056)

# save(kantonsgebiet, file = "data/kantonsgebiet.RData")
usethis::use_data(kantonsgebiet, overwrite = TRUE,compress = "xz")


landesgebiet <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_LANDESGEBIET.shp") %>%
  st_set_crs(2056)

# save(landesgebiet, file = "data/landesgebiet.RData")
usethis::use_data(landesgebiet, overwrite = TRUE,compress = "xz")
