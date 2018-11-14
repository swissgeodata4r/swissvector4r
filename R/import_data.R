

library(sf)
library(dplyr)


read_sf("inst/extdata/swissBOUNDARIES3D_1_3_TLM_BEZIRKSGEBIET.shp") %>%
  st_set_crs(2056) %>%
  save(file = "data/berzirksgebiet.RData")


read_sf("inst/extdata/swissBOUNDARIES3D_1_3_TLM_HOHEITSGEBIET.shp") %>%
  st_set_crs(2056) %>%
  save(file = "data/hoheitsgebiet.RData")


read_sf("inst/extdata/swissBOUNDARIES3D_1_3_TLM_HOHEITSGRENZE.shp") %>%
  st_set_crs(2056) %>%
  save(file = "data/hoheitsgrenze.RData")

read_sf("inst/extdata/swissBOUNDARIES3D_1_3_TLM_KANTONSGEBIET.shp") %>%
  st_set_crs(2056) %>%
  save(file = "data/kantonsgebiet.RData")


read_sf("inst/extdata/swissBOUNDARIES3D_1_3_TLM_LANDESGEBIET.shp") %>%
  st_set_crs(2056) %>%
  save(file = "data/landesgebiet.RData")
