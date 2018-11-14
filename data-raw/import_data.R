

require(sf)

bezirksgebiet <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_BEZIRKSGEBIET.shp") %>%
  st_set_crs(2056)


usethis::use_data(bezirksgebiet, overwrite = TRUE,compress = "xz")


hoheitsgebiet <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_HOHEITSGEBIET.shp") %>%
  st_set_crs(2056)

usethis::use_data(hoheitsgebiet, overwrite = TRUE,compress = "xz")


hoheitsgrenze <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_HOHEITSGRENZE.shp") %>%
  st_set_crs(2056)

usethis::use_data(hoheitsgrenze, overwrite = TRUE,compress = "xz")

kantonsgebiet <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_KANTONSGEBIET.shp") %>%
  st_set_crs(2056)

usethis::use_data(kantonsgebiet, overwrite = TRUE,compress = "xz")


landesgebiet <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_LANDESGEBIET.shp") %>%
  st_set_crs(2056)

usethis::use_data(landesgebiet, overwrite = TRUE,compress = "xz")
