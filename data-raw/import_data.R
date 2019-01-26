

require(sf)
require(dplyr)


################################################################################
## Bezirk ######################################################################
################################################################################

bezirksgebiet <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_BEZIRKSGEBIET/swissBOUNDARIES3D_1_3_TLM_BEZIRKSGEBIET.shp") %>%
  st_set_crs(2056) %>%
  dplyr::select(NAME,BEZIRKSNUM,KANTONSNUM,EINWOHNERZ,BEZIRKSFLA) %>%
  st_zm(NULL)

usethis::use_data(bezirksgebiet, overwrite = TRUE,compress = "xz")

################################################################################
## Gemeinde ####################################################################
################################################################################

gemeindegebiet <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_HOHEITSGEBIET/swissBOUNDARIES3D_1_3_TLM_HOHEITSGEBIET.shp") %>%
  st_set_crs(2056) %>%
  filter(OBJEKTART == "Gemeindegebiet") %>%
  group_by(NAME,BEZIRKSNUM,KANTONSNUM,BFS_NUMMER) %>%
  summarise(
    EINWOHNERZ = sum(EINWOHNERZ,na.rm = T),
    GEM_FLAECH  = sum(GEM_FLAECH,na.rm = T)
  ) %>%
  st_zm(NULL)


usethis::use_data(gemeindegebiet, overwrite = TRUE,compress = "xz")

################################################################################
## Kanton ######################################################################
################################################################################


kantone_meta <- readr::read_delim("data-raw/kantone_meta.csv",delim = ";")


kantonsgebiet <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_KANTONSGEBIET/swissBOUNDARIES3D_1_3_TLM_KANTONSGEBIET.shp") %>%
  st_set_crs(2056) %>%
  # dplyr::group_by(NAME,KANTONSNUM) %>%
  # summarise(
  #   EINWOHNERZ = sum(EINWOHNERZ,na.rm = T),
  #   KANTONSFLA = sum(KANTONSFLA,na.rm = T)
  #   ) %>%
  dplyr::left_join(kantone_meta, by = c("KANTONSNUM" = "Kantonsnummer")) %>%
  st_zm(NULL)



usethis::use_data(kantonsgebiet, overwrite = TRUE,compress = "xz")

################################################################################
## Land ########################################################################
################################################################################

landesgebiet <- sf::read_sf("data-raw/swissBOUNDARIES3D_1_3_TLM_LANDESGEBIET/swissBOUNDARIES3D_1_3_TLM_LANDESGEBIET.shp") %>%
  st_set_crs(2056) %>%
  dplyr::select(NAME,EINWOHNERZ,LANDESFLAE) %>%
  st_zm(NULL)

usethis::use_data(landesgebiet, overwrite = TRUE,compress = "xz")


################################################################################
## Seen ########################################################################
################################################################################

seen <- read_sf("data-raw/22_DKM500_GEWAESSER_PLY/22_DKM500_GEWAESSER_PLY.shp") %>%
  st_set_crs(2056) %>% 
  sf::st_join(
    landesgebiet %>% 
      mutate(j = T) %>% 
      select(j),
    join = st_intersects
  ) %>% 
  filter(j) %>%
  dplyr::select(NAMN1,GROESSTE_S,SEESPIEGEL,NLN1,SHP_AREA)

usethis::use_data(seen, overwrite = TRUE,compress = "xz")



################################################################################
## DKM1M Hoheitsgebiet #########################################################
################################################################################

# ended this venture since i dont know how to cleanly select only swiss data

# hoheitsgebiet <- sf::read_sf("data-raw/DKM1M_HOHEITSGEBIET/DKM1M_HOHEITSGEBIET.shp") %>%
#   st_set_crs(2056)
# 
# hoheitsgebiet %>%
#   filter(OBJEKTART == "HG Kanton") %>%
#   st_set_geometry(NULL) %>% View()
#   ggplot() + geom_sf(aes(fill = BESCHRIFTE))
  






